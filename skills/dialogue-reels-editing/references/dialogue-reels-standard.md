# Dialogue Reels Editing Standard

## 1. Source protection and timeline structure

Before any cut:

- duplicate the timeline rather than trimming the long-form master
- name it `SHOW | EPISODE | SHORT ## | TOPIC | 9x16 | v##`
- preserve original source timecode in the manifest
- lock reference audio and keep a muted backup track
- save a checkpoint before and after structural editing

Recommended tracks:

```text
V5  brand texture / adjustment layer
V4  screenshots / B-roll / diagrams
V3  hook and cover graphics
V2  active-speaker camera
V1  base or alternate camera
ST1 editable captions
A4  sound design
A3  room tone / ambience
A2  isolated or backup dialogue
A1  cleaned dialogue master
```

## 2. Story selection

A short needs a complete thought, not merely an isolated quote:

1. **Hook:** establish the tension or surprise immediately.
2. **Setup:** the minimum context needed to understand the point.
3. **Development:** the reasoning, contrast, or anecdote.
4. **Payoff:** the useful, funny, or surprising conclusion.
5. **Exit:** a clean final beat without an accidental cutoff.

If removing context changes who, what, or why, extend the clip rather than relying on a misleading headline.

## 3. Dead-silence removal

Use `ffmpeg silencedetect` or waveform analysis to propose candidates, then decide in context.

Starting proposal thresholds for close-mic podcast audio:

- candidate silence: below roughly `-36 dB` for at least `0.55 s`
- keep 80–180 ms before speech onset
- keep 120–250 ms after a finished phrase
- preserve longer pauses when they carry surprise, discomfort, comedy, or emphasis

Do not remove breaths wholesale. Remove mouth noise, chair noise, and long empty waits only when the edit remains natural.

After a ripple deletion, inspect every linked video, subtitle, overlay, and audio track for unintended gaps.

## 4. Filler-word decisions

### Usually removable

- isolated `um`, `uh`, `erm`
- non-responsive `mhm` or `hmm` under another speaker
- abandoned repeated starts
- repeated connective words that do not change emphasis

### Usually preserve

- `hmm` that communicates doubt, surprise, or disagreement
- `mhm` that is the listener's actual response
- fillers inside a punchline or emotional beat
- hesitation that shows the speaker thinking through a difficult idea

Cut on a closed mouth, blink, head turn, hand gesture, or camera change where possible. Use a short room-tone bridge or L/J cut to avoid an audible vacuum. Re-read the resulting sentence; if it sounds unnaturally perfect or changes the speaker's personality, restore the filler.

## 5. Lip-sync method

### Establish the reference

1. Identify the authoritative audio track, normally the isolated microphone or the clearest continuous recording.
2. Find a visible plosive (`p`, `b`, `m`), hard consonant, clap, or mouth closure.
3. Align picture to audio at that anchor before structural edits.
4. Check another anchor near the end to distinguish a constant offset from drift.

### Correct the right problem

- **Constant offset:** slip the linked audio or picture by the measured number of frames.
- **Linear drift:** confirm sample-rate/frame-rate interpretation, then apply one measured retime to a duplicate—not many local guesses.
- **Local edit error:** restore the linked source around that edit and rebuild the cut.
- **Missing media/audio:** relink or replace from the source; do not stretch unrelated audio to fill the hole.

### Verification

- check beginning, middle, and end at 1× speed
- check every ripple edit, filler removal, and speaker switch
- inspect at least one plosive in a 20-second context window
- target a visibly convincing result within about one frame when the source permits; never hide uncertainty
- optional automated SyncNet-style scoring may flag candidates, but visual review remains required

## 6. Active-speaker framing

Corroborate isolated microphone activity, transcript/diarization timing, visible mouth motion, and conversational context. At uncertain switches, review picture and sound together at normal speed. No single cue should decide the visible speaker when the cues disagree.

Rules:

- show the speaking person by default
- allow a 2–6 frame visual lead when anticipating a response
- allow a brief reaction shot when it adds humor, emotion, or comprehension
- return to the active speaker before the reaction becomes confusing
- use split screen for genuine overlap or rapid back-and-forth
- do not leave the listener on screen for an extended monologue unless B-roll is intentional and relevant
- if confidence is low, prefer split screen or the wide shot and add a marker for review

Audio diarization alone cannot identify who is visibly speaking and may mistake laughter, cross-talk, or backchannels for a turn. Treat it as a proposal, not the edit decision.

## 7. Jump cuts, punch-ins, and B-roll

- use hard cuts by default
- cover a meaningful deletion with an alternate camera, 105–118% punch-in, relevant screenshot, or diagram
- avoid alternating punch-in sizes mechanically
- keep overlays long enough to read and remove them when the spoken reference ends
- preserve overlay source files and editable transform properties
- never use a visual cover to hide an unresolved audio or sync problem

## 8. Audio cleanup and mix

Treat “studio quality” as transparent repair and consistent delivery, not a heavy preset:

1. repair missing media and restore the cleanest continuous microphone source
2. remove DC offset, clicks, and discontinuities before noise processing
3. high-pass only where rumble exists, often around 60–90 Hz for speech
4. notch measured hum and harmonics rather than broadly removing bass
5. use the minimum denoise or dialogue isolation needed for steady noise
6. make small corrective EQ moves; de-ess only where harshness exists
7. control exceptional laughs or shouts with clip gain or automation before gentle compression
8. use loudness normalization and a transparent true-peak limiter for delivery
9. loudness-match the processed and original tracks before judging quality

Use only the stages the source needs. Keep the untreated dialogue muted on a backup track. If the processed version sounds phasey, watery, gated, overly bright, or smaller than the original, reduce the processing. Listen for clipped consonants, sudden room-tone changes, doubled dialogue, and audio disappearing after a cut.

Starting delivery target for social video: approximately `-14 LUFS` integrated with true peak at or below `-1 dBTP`. Measure the full rendered clip; do not normalize from a short selection.

## 9. Meme, reaction, and overlay sourcing

Use meme inserts as brief editorial annotations. They should clarify identity, surprise, contradiction, confusion, escalation, or a punchline.

### Source order

1. original branded meme made from owned footage or graphics
2. public-domain or CC0 asset
3. CC BY asset with visible or manifest credit
4. licensed stock/GIF library asset whose terms cover the intended platform
5. an externally hosted meme only after its reuse rights are confirmed

For every third-party asset, record:

- source URL
- creator or rights holder
- license and attribution requirement
- downloaded filename
- timeline in/out and intended editorial purpose

### Placement rules

- prefer 0.6–1.8 second inserts
- place above or beside a head only when it does not cover eyes, mouth, captions, or platform UI
- use a tracked label, thought bubble, reaction crop, or cutaway rather than a floating rectangle when possible
- keep a meme on screen long enough to understand but remove it before it competes with the next sentence
- animate in 4–8 frames and out faster; a tiny scale pop or analog snap is enough
- use at most one strong meme idea per conversational beat
- preserve a version without the meme for legal or tonal review

Do not assume that popularity means permission. If rights are unclear, create an original branded reaction instead.

## 10. Drums and special sound effects

Sound effects should mark structure or comedy:

- rimshot or compact drum fill: a real punchline
- low tom/impact: a surprising reveal or strong statement
- radio click/tape engage: hook or retro-broadcast transition
- short riser: anticipation before a payoff
- record scratch/tape stop: contradiction or deliberate interruption
- UI tick/terminal beep: on-screen technical annotation

Mixing rules:

- place effects on a separate named track
- use short fades to prevent clicks
- duck effects under dialogue and keep consonants intelligible
- avoid stacking more than two effects on one beat
- do not add a sound effect to every cut
- audition on laptop speakers and headphones
- preserve an effect-free dialogue master

## 11. Captions

- regenerate or retime captions from the edited audio, not the long-form timeline
- compare each caption with roughly 20 seconds before and after
- correct names, companies, products, and technical vocabulary
- use phrase-based line breaks and a maximum of two lines
- remove captions for words that were removed from audio
- retain speaker labels only when needed to resolve ambiguity
- keep captions clear of platform UI and visible mouths
- export an editable `.srt` plus the styled timeline track
- when using a subtitle box, keep the background and speaker tag on a separate continuous layer; let only the words change at cue boundaries
- inspect at least one caption gap and each card transition to confirm the box does not blink or cover important visuals

## 12. Vertical framing and safe zones

- output 1080×1920 unless a platform requires otherwise
- fill the frame without letterboxing or empty vertical gaps
- keep eyes in the upper half and mouth clear of captions
- use face tracking only as a starting point; check every cut manually
- preserve overlay and screenshot proportions; rebuild layout rather than stretching
- keep essential text about 80 px from side edges, 160 px from the top, and 300 px from the bottom

## 13. Hook and cover

- open on the strongest complete line, not a fragment stripped of meaning
- the hook may use a darker grade or short sound cue, but the transition into the full clip must be obvious
- start with audible content and a moving speaker or relevant visual; an editable title may overlay the opening while it remains readable and unobtrusive
- keep a separate designed cover still for the grid or profile
- include episode identification and an accurate topic headline
- follow the show's brand skill or style guide when one exists

## 14. Final QA passes

### Story pass

- complete idea with hook, context, payoff, and exit
- no misleading omission or accidental repetition

### Picture pass

- active speaker is visible
- no black frames, offline media, borders, vertical gaps, or stretched overlays
- reaction shots and B-roll are intentional
- memes are relevant, readable, rights-cleared, and do not obscure faces or captions

### Sync and audio pass

- lips match at beginning, middle, end, and every edit
- no missing audio, doubled speech, hum jumps, harsh denoise, or clipped laughter
- special effects support a specific beat and never mask dialogue
- processed dialogue is loudness-matched against the original and free of denoise artifacts
- loudness and true peak measured on the final render

### Caption pass

- captions cover the entire spoken clip
- wording makes sense in surrounding context
- timing and line breaks match the edited speech
- names and technical terms are correct

### Delivery pass

- editable timeline saved and reopened when practical
- clean master, `.srt`, cover still, and platform render present
- source timestamps and edit manifest included
- first, middle, and final frames visually inspected at full and thumbnail size
