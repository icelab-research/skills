---
name: dialogue-audio-improvement
description: Improve noisy or uneven spoken audio in podcasts, interviews, and video. Diagnose the source, choose proportionate repair, preserve complete words and sync, and verify the exported result by listening.
metadata:
  short-description: Improve and verify spoken audio
---

# Dialogue Audio Improvement

## Goal

Make speech clearer and more consistent while preserving its natural tone, every spoken word, and any established lip sync. Keep the original recording and an editable path back to it.

## Workflow

1. **Inspect the source.** Identify the original audio channels, timeline cuts, sample rate, clipping, gaps, and existing effects. Listen to each channel at a matched level before choosing or combining them. Check quiet syllables and consonants: a channel that sounds cleaner may have lost speech through gating. If combining channels, measure their timing and polarity first.
2. **Name the audible problem.** Listen to speech and noise-only passages on headphones and ordinary speakers. Note timecoded hum, buzz, hiss, room tone, reverberation, distortion, or uneven level. Use a spectrum or loudness measurement to locate a problem, not as proof that the sound is good.
3. **Choose the smallest useful repair.** For tonal hum or buzz, use a narrow cut at the measured frequency and its audible harmonics. For broadband noise, compare a conservative denoiser or speech enhancer with the original; [DeepFilterNet](https://github.com/Rikorose/DeepFilterNet) is one option. For uneven lines, use local gain or gentle compression. Avoid repeated denoising or broad EQ cuts that remove voice body, laughter, or consonants. If words are clipped or absent in the source, seek another recording rather than claiming a filter restored them.
4. **Preserve timing.** Process a copy of the selected source audio. Record any latency from enhancement, resampling, or limiting; align the processed stem against the original edit at the beginning, middle, end, and dialogue cuts. Check lip sync on the final render rather than relying only on waveform alignment.
5. **Remix and export.** Keep dialogue, music, and intentional effects on separate editable tracks until the final mix. Match levels across cuts without clipping. Preserve captions and picture edits when replacing only audio. Version the export so the previous mix remains available.
6. **Verify by listening.** Decode the entire export and check duration, gaps, loudness, peaks, and sync. Compare level-matched before/after passages, including quiet speech, laughter, transitions, and the noisiest sections. Confirm that noise reduction is audible without missing words or metallic artifacts. If direct listening is unavailable, report the technical checks and request a timecoded listening review before calling it publish-ready.

## Handoff

Keep the untouched source, selected channel or source cuts, processed dialogue stem, separate effects, editable project, and versioned export. Document which defects were treated, the measured settings used for this recording, and any passages that still need review. Do not reuse a previous recording's EQ, gain, or sync offset without measuring the new source.
