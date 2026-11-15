---
name: studio-audio-verifying
description: Verify and improve recorded speech for a publishable podcast or video. Use when a user asks for studio-quality dialogue, denoising, de-humming, or an audio quality check; it does not replace an editorial video review.
metadata:
  short-description: Verify and polish spoken audio
---

# Studio Audio Verifying

## Goal

Deliver clear, natural, consistently audible speech while preserving the original performance and any intentional music or sound effects. "Studio quality" is a listening judgment, not a loudness number.

## Workflow

1. Identify the exact current render and authoritative source. Inspect streams, channel mapping, sample rate, duration, and any separate dialogue or effect stems. Keep the original untouched and work in a versioned copy.
2. Establish a reference. Listen to the full original and note timecoded hum, hiss, room noise, distortion, plosives, sibilance, abrupt edits, buried words, and effects that mask speech. Compare with the source or isolated microphone before assuming a rendered mix is the best starting point. A quieter channel may have gated-out syllables, so check every speech span before replacing the mix with it.
3. Measure only what helps diagnosis: integrated loudness and true peak over the full program, short-term levels, clipping, silent gaps, spectral peaks for hum, and representative noise-only handles. Identify the actual tonal peaks rather than assuming hum sits only at 50/60 Hz and their harmonics. A high-pass or notch should follow an observed problem; do not apply every processor by default.
4. Process dialogue separately from music and effects when stems exist. Correct DC offset or clicks, remove measured hum and harmonics with the narrowest useful cuts, reduce steady noise conservatively, then use modest EQ, de-essing, and dynamics only as needed. Preserve breaths and room tone so cuts do not pump or sound gated.
5. Level-match the processed and original dialogue before comparing. Listen to the first, middle, and last speech passages, every edit or speaker change, quiet words, laughter, sibilants, and the loudest sound effect. Check for watery or metallic voice, missing consonants, pumping, sudden ambience changes, and effects covering speech. If processing causes those problems, reduce or undo it and listen again.
6. Remix intentional effects at their original timestamps. Verify each effect is audible at ordinary device volume without masking words. Do not infer audibility from the existence of a clip on a timeline.
7. Export and inspect the actual deliverable: decode without error, confirm audio and video durations and start times, check no unintended silence or clipping, remeasure the tonal peaks that prompted repair, measure final loudness and true peak, and compare picture frame count or hashes when only audio should change. For video, check lip sync at the start, middle, end, and near edits.

## Verification boundary

- Automated measurements can confirm technical properties; they cannot prove that a voice sounds natural or that an effect is funny or audible on a laptop.
- If direct listening is unavailable, say so plainly and label the result **technically checked, listening review pending**. Never claim studio quality or complete verification from FFmpeg metrics alone.
- Treat speech recognition as a rough intelligibility aid, not proof that every word is clear.
- Keep the untouched original, processed dialogue stem, effect stems, editable project or reconstruction notes, and final render so the processing can be reversed.

## Handoff

Provide the source and publishable render, processing steps, before/after measurements, timecoded listening findings, any unresolved problems, and a clear verification status. Use the actual exported file for the final check.
