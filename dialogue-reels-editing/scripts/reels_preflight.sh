#!/usr/bin/env bash

set -euo pipefail

# reads media properties and proposes silence candidates without changing the file
if [[ $# -ne 1 ]]; then
  echo "usage: reels_preflight.sh /absolute/path/to/video.mp4" >&2
  exit 2
fi

media_path="$1"
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

echo "silence candidates"
ffmpeg -hide_banner -nostats -i "$media_path" \
  -af "silencedetect=noise=-36dB:d=0.55" \
  -f null - 2>&1 \
  | sed -n '/silence_/p'

echo "loudness"
ffmpeg -hide_banner -nostats -i "$media_path" \
  -af "loudnorm=I=-14:TP=-1:LRA=11:print_format=json" \
  -f null - 2>&1 \
  | sed -n '/^{/,/^}/p'
