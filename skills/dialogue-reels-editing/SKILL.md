---
name: dialogue-reels-editing
description: |
  Edit podcast and interview dialogue into compact short-form videos while
  preserving meaning, lip-sync, speaker visibility, clean audio, and editable
  captions. Use for Reels, TikTok, YouTube Shorts, or any multi-speaker vertical
  clip that needs silence and filler removal, active-speaker switching, and
  frame-accurate quality control. Not for music-video rhythm or beat cutting,
  or general long-form video assembly.
metadata:
  version: "1.0.0"
  short-description: Edit synced multi-speaker dialogue reels
---

# Dialogue Reels Editing

## Contract

- Removes true dead air and non-semantic filler without changing the speaker's meaning or emotional cadence.
- Keeps dialogue and visible lips aligned after every ripple, trim, retime, and speaker switch.
- Shows the active speaker by default and uses reaction shots or split screen only with editorial intent.
- Delivers complete, contextual, editable captions and clean platform-ready audio.
- Uses memes, reaction inserts, percussion, and special effects only when they clarify or strengthen a specific beat.
- Records the source URL and usage rights for every third-party visual or sound asset.
- Preserves an untouched source timeline plus a versioned editable short timeline.
- Records source timestamps and every intentional mute, beep, omission, or unresolved uncertainty.

## Phases

1. **Protect the source.** Duplicate the source timeline, add the episode/clip/version to its name, and save a project checkpoint before editing.
2. **Audit the media.** Confirm frame rate, sample rate, available camera angles, isolated microphones, source timecode, channel mapping, and the authoritative dialogue track. Establish a known sync anchor before any structural edit.
3. **Build the dialogue map.** Transcribe with word timestamps, identify speakers, mark overlaps, and treat diarization as a draft until audio and visible mouth movement agree.
4. **Form a retention hypothesis.** Before cutting, fill the candidate card in `references/organic-reach-playbook.md`: identify the cold viewer, the single promise, the first-frame visual, the first spoken line, the payoff, and why someone would finish, share, save, or watch the full episode. Draft several truthful hooks before choosing one.
5. **Choose a complete story.** Select a hook, setup, development, payoff, and clean exit. Record the original source range before cutting.
6. **Remove dead air.** Remove only silence that adds no meaning. Preserve natural breaths, comedic timing, hesitation with intent, and short room-tone handles.
7. **Remove filler carefully.** Remove standalone `um`, `uh`, `mhm`, `hmm`, repeated starts, and verbal debris only when the sentence remains natural and semantically unchanged.
8. **Repair every edit.** Ripple linked picture, dialogue, captions, overlays, and sound design together. Cover jump cuts with a motivated angle change, punch-in, reaction, or B-roll—not an arbitrary transition.
9. **Verify A/V sync.** Re-check the sync anchor from the audit at the beginning/middle/end, then inspect every dialogue edit and speaker switch at normal speed.
10. **Cut the active speaker.** Show the person speaking by default. Use split screen for genuine overlap and brief reaction shots only when they add information or humor.
11. **Source purposeful meme inserts.** Search for contextually relevant, legally reusable reactions or create an original branded meme. Record the source URL, creator, license, and exact usage timestamp before importing it.
12. **Add selective sound design.** Use a drum hit, rimshot, radio click, tape stop, riser, or other effect only on a clear joke, reveal, transition, or emphasis beat. Keep it under dialogue and preserve an effect-free version.
13. **Polish dialogue to studio quality.** Repair source problems first, then de-hum, denoise, EQ, de-ess, control dynamics, and normalize loudness conservatively. Compare against the untreated track for artifacts.
14. **Correct captions.** Compare each caption with approximately 20 seconds before and after, fix names and technical terms, and ensure timing follows the edited audio rather than the original transcript.
15. **Apply branding.** Use `randomly-distributed-video-brand` for covers, episode labels, type, caption styling, motion, and safe zones when the content belongs to Randomly Distributed.
16. **Plan a platform test.** Export one core edit, vary one hypothesis at a time, and record any published variant in the playbook's publication ledger when posting and analytics are in scope. Compare only with similar posts on the same account and platform. Instagram Trial Reels may be used for eligible accounts. Never promise virality.
17. **Run final QA.** Watch once for story, once for picture/speaker choice, once for audio and lip-sync, and once for captions and platform framing.
18. **Deliver.** Provide the editable timeline, caption file, clean master, publish render, cover still, source timestamps, asset credits, and an edit/marker manifest.

## Output Format

Every short should include a manifest with:

- episode, clip title, source in/out, edited duration, frame rate, and aspect ratio
- hook, setup, payoff, and final line
- the pre-edit candidate card, hook variants considered, chosen retention hypothesis, and platform test plan
- removed silence and fillers, including any ambiguous removals intentionally preserved
- authoritative audio track and measured sync correction
- speaker-switch timestamps and any intentional reaction shots
- caption file and technical-name corrections
- audio processing and target loudness
- meme/overlay and sound-effect timestamps, source URLs, creators, and licenses
- cover/timeline/publish paths and validation results

See `references/dialogue-reels-standard.md` for thresholds, decision rules, and the QA checklist.

## Anti-Patterns

- Do not delete every pause or filler mechanically; natural cadence is part of the performance.
- Do not use audio diarization alone to decide which camera is visible.
- Do not move audio independently after picture is cut unless the offset is measured and documented.
- Do not fix sync by generating or warping a person's mouth.
- Do not leave silent holes, missing audio chunks, black frames, vertical gaps, or empty timeline space.
- Do not cover a bad cut with random B-roll that changes the meaning.
- Do not paste a meme over a speaker merely because there is empty space; it must land on a specific idea or reaction.
- Do not download or publish an unlicensed meme, GIF, song, or sound effect when the rights are unclear.
- Do not let a drum hit, laugh cue, or effect mask speech or turn every sentence into a punchline.
- Do not label aggressive denoise or flattened dynamics as studio quality.
- Do not burn captions into the only editable master.
- Do not claim sync is correct without checking visible speech at multiple points.
- Do not promise or imply guaranteed virality; document the hypothesis and let retention, completion, shares, saves, and follow-through decide.
- Do not place a multi-second logo or cover card before the first useful spoken or visual beat.
- Do not chase a trend that weakens the clip's topic, voice, or audience fit.

## Tools Used

- **DaVinci Resolve:** reversible timeline editing, linked ripple cuts, active-speaker switching, captions, Fairlight cleanup, and export.
- **FFmpeg/ffprobe:** media inspection, silence proposals, loudness measurement, proxies, and technical validation.
- **Transcription:** word-level timing and caption draft generation.
- **Speaker diarization:** provisional speaker segmentation, never the only source of truth.
- **Visual mouth-activity checking:** validation of active speaker and lip-sync at uncertain switches.
- **Web search and licensed libraries:** discovery of contextually relevant reusable memes and sound effects with recorded provenance.

## References

- `references/dialogue-reels-standard.md` — editorial decisions, sync method, active-speaker rules, captions, audio, and QA.
- `references/organic-reach-playbook.md` — candidate card, hook and retention guidance, and a publication ledger. Read it before selecting clips and when posting or assessing reach is in scope.
- `scripts/reels_preflight.sh` — read-only media and silence preflight.
