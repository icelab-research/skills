#!/usr/bin/env bash

set -euo pipefail

# reads media properties and proposes silence candidates without changing the file
audio_stream_ordinal=0
media_path=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --audio-stream)
      if [[ $# -lt 2 ]]; then
        echo "missing value for --audio-stream" >&2
        exit 2
      fi
      audio_stream_ordinal="$2"
      shift 2
      ;;
    -*)
      echo "unknown option: $1" >&2
      exit 2
      ;;
    *)
      if [[ -n "$media_path" ]]; then
        echo "only one media path may be provided" >&2
        exit 2
      fi
      media_path="$1"
      shift
      ;;
  esac
done

if [[ -z "$media_path" ]]; then
  echo "usage: reels_preflight.sh [--audio-stream N] /absolute/path/to/video.mp4" >&2
  exit 2
fi

if ! [[ "$audio_stream_ordinal" =~ ^[0-9]+$ ]]; then
  echo "audio stream must be a zero-based non-negative integer: $audio_stream_ordinal" >&2
  exit 2
fi

if [[ ! -f "$media_path" ]]; then
  echo "file not found: $media_path" >&2
  exit 2
fi

echo "media"
ffprobe -v error \
  -show_entries format=filename,duration,format_name \
  -show_entries stream=index,codec_type,codec_name,width,height,r_frame_rate,sample_rate,channels \
  -of json \
  "$media_path"

selected_audio_stream_index="$(
  ffprobe -v error \
    -select_streams "a:$audio_stream_ordinal" \
    -show_entries stream=index \
    -of default=noprint_wrappers=1:nokey=1 \
    "$media_path"
)"

if [[ -z "$selected_audio_stream_index" ]]; then
  echo "audio stream unavailable: 0:a:$audio_stream_ordinal in $media_path" >&2
  exit 2
fi

echo "selected audio stream"
ffprobe -v error \
  -select_streams "a:$audio_stream_ordinal" \
  -show_entries stream=index,codec_type,codec_name,sample_rate,channels \
  -of json \
  "$media_path"

echo "silence candidates"
ffmpeg -hide_banner -nostats -i "$media_path" \
  -map "0:a:$audio_stream_ordinal" -vn -sn -dn \
  -af "silencedetect=noise=-36dB:d=0.55" \
  -f null - 2>&1 \
  | sed -n '/silence_/p'

echo "loudness"
ffmpeg -hide_banner -nostats -i "$media_path" \
  -map "0:a:$audio_stream_ordinal" -vn -sn -dn \
  -af "loudnorm=I=-14:TP=-1:LRA=11:print_format=json" \
  -f null - 2>&1 \
  | sed -n '/^{/,/^}/p'
