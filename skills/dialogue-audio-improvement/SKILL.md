---
name: dialogue-audio-improvement
description: Repair noisy podcast, interview, or reel dialogue when hum, buzz, or background sound remains after basic cleanup. Use source-channel selection, neural speech enhancement, measured tonal filtering, level matching, and sync checks. Not for music mastering.
metadata:
  short-description: Repair and verify noisy dialogue
---

# Dialogue Audio Improvement

## Goal

Deliver complete, natural speech with less audible noise and unchanged picture timing. Keep the source and every processing stage reversible. The [DeepFilterNet project](https://github.com/Rikorose/DeepFilterNet) provides the pretrained model used in the worked example below; the model is not trained on the podcast.

## Workflow

1. **Start from the original recording.** Identify the exact publish timeline and extract its source cuts from each original audio channel. Inspect channel mapping, sample rate, clipping, quiet passages, and word completeness. Keep dialogue, effects, and music separate. Do not process an already compressed publish mix if original channels are available.
2. **Choose a complete speech source.** Audition each channel at matched level, including quiet words, repeated starts, laughter, and final consonants. A quieter channel may have gated-out syllables. Measure inter-channel lag and polarity before combining channels; an unaligned blend can sound doubled or hollow. Prefer one complete channel when that avoids a noisy or delayed blend.
3. **Prepare neural enhancement without losing time.** Make a working mono 48 kHz WAV in the format supported by the chosen model. Reduce input gain if peaks approach full scale. Add a short tail pad before delay-compensated enhancement, then trim the result back to the exact source sample count. Keep input and output directories different: some tools reuse the input basename and could overwrite a working input.
4. **Compare a bounded model pass.** For the v12 reference, run the official `deep-filter` binary with the DeepFilterNet3 ONNX model, delay compensation, and a 24 dB attenuation limit: `deep-filter -m MODEL.tar.gz -D -a 24 -o OUTPUT_DIR INPUT.wav`. This is a candidate setting, not a universal preset. At matched loudness, check whether the model removes noise without dropping syllables or making the voice metallic. Do not stack more neural passes by default.
5. **Remove only measured tonal noise.** Inspect noise-only handles and speech for persistent peaks. Apply the smallest high-pass and narrow EQ cuts that reduce those peaks; compare the voice body and consonants before and after. The v12 cuts below are specific to that recording.
6. **Restore levels and sync.** Match speech loudness across the edit, then treat unusually quiet lines with a smooth local gain ramp rather than a global boost. Measure the enhanced stem against the picture's established audio reference at the start, middle, end, and every dialogue cut. Re-check timing after limiters and resampling; their latency can change the final offset.
7. **Remix and export.** Put intentional effects back from separate stems at their original timestamps. Preserve the editable timeline and captions. When only audio changes, copy the video stream into a versioned render and verify its hash against the previous picture.
8. **Validate the actual export.** Decode the full file; check audio and video duration/start time, loudness, true peak, quiet passages, missing speech spans, effect audibility, and lip sync. Use transcription only to flag passages for review. Compare level-matched A/B clips on laptop speakers and headphones before calling the result fixed.

## V12 worked example

The 32.30-second *Asynchronous Friendship 101* repair used 13 original source cuts. Its left channel was quieter but lost some syllables; the right channel retained them. The two channels were about 39.5 ms apart, so the repair used the right channel alone.

| Stage | Setting used for v12 |
|---|---|
| Input | Right-channel source cuts; mono 48 kHz PCM16 working copy, reduced 6 dB to avoid model clipping; 200 ms tail padding |
| Model | DeepFilterNet v0.5.6 binary with DeepFilterNet3 ONNX; `-D -a 24`; input and output in separate folders |
| Tonal repair | Two `highpass=f=120:p=2` stages, then `equalizer=f=85:t=h:w=20:g=-8` |
| Level | `loudnorm=I=-17:TP=-2:LRA=8`; a smooth 6 dB lift from 28.7 to 29.3 s for the final quiet sentence; 0.8 dB overall gain |
| Alignment | 20 ms explicit delay plus about 5 ms limiter lookahead, selected by correlation against the established edit; do not reuse this offset without measuring |
| Mix | Original tom at 14.833 s and rimshot at 24.567 s on separate inputs; final limiter `limit=0.86` |

The exported v12 had the same 969 video frames and 32.30-second duration as v11. Its quiet 21.78–22.15 s passage measured 11.1 dB lower in RMS; the 75–100 Hz band was 7.3 dB lower. Speech span levels stayed close to v11, and relative audio lag across all 13 cuts was at most 0.62 ms. These are technical checks, not proof of natural sound.

The v12 model archive was downloaded from the [official repository at this revision](https://raw.githubusercontent.com/Rikorose/DeepFilterNet/7b14b895fe7fc42cab72b4a4c1e49c982bd6404b/models/DeepFilterNet3_onnx.tar.gz); its SHA-256 is `c94d91f70911001c946e0fabb4aa9adc37045f45a03b56008cb0c8244cb63616`. Do not bundle private source recordings or model binaries in the skill.

## Stop and handoff

- Preserve the untouched original, selected source-channel cuts, enhanced dialogue stem, separate effects, editable project, A/B comparison, and versioned export.
- If direct listening is unavailable, label the result **technically checked, listening review pending**. Do not call it studio quality or publish-ready based on a spectrum, loudness number, or transcript alone.
- After one neural candidate and one measured tonal adjustment, get a timecoded listening report before applying more global filters. Fix the reported defect rather than repeatedly lowering whichever band is easiest to measure.
