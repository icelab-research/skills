# Randomly Distributed Video Brand Guidelines

## 1. Brand idea

Randomly Distributed is a technical, curious, slightly rebellious podcast that dives deeply into distributed systems while leaving room for unexpected topics and irregular schedules. The video identity should feel like a public-access technology broadcast produced by people who understand the systems they are diagramming.

The visual tension is deliberate:

- rigorous systems thinking + playful randomness
- old broadcast equipment + contemporary infrastructure
- high-impact editorial type + precise mono metadata
- near-black technical canvases + sharp phosphor accents

## 2. Art-direction principles

1. **Bold:** condensed headlines, strong hierarchy, decisive crops.
2. **Old-school:** CRT displays, cassette labels, radio towers, newsprint grain, analog registration errors.
3. **Technical:** nodes, graphs, queues, clocks, waveforms, replication paths, terminal prompts.
4. **Playful:** unexpected labels and occasional collage elements, used with restraint.
5. **Diagrammatic:** every line, dot, arrow, and waveform should imply information flow.
6. **Retro-broadcast:** editorial framing rather than generic cyberpunk decoration.

## 3. Color system

| Token | Hex | Video role |
|---|---|---|
| Midnight Black | `#0B0D10` | primary canvas, deep shadows |
| Graphite | `#171A1F` | cards, caption beds, layered panels |
| Phosphor Green | `#89FF6A` | primary accent, default episode tag, Lois label, nodes, terminal cues |
| Signal Amber | `#FFB14A` | alternate episode tag, Jacob label, emphasis, warnings |
| Error Red | `#FF5C57` | alerts, contradiction, critical emphasis only |
| Dusty Cream | `#E7DFD1` | headlines, primary copy, paper/tape fills |
| Steel Blue | `#8EA4C9` | secondary technical diagrams and supporting data |

Recommended visual ratio: 70–80% Midnight/Graphite, 15–20% Dusty Cream, and no more than 10% combined accent colors. One accent should dominate each frame.

Do not place Phosphor Green and Error Red in equal visual weight unless the content is explicitly comparing success and failure states.

## 4. Typography

### Display headlines

- Preferred: **Druk Condensed Bold**.
- Installed production fallback: **DIN Condensed Bold**.
- Emergency fallback: **Impact**, horizontally scaled only when necessary.
- Use uppercase, tight leading, and compact tracking.
- Covers should use one to three lines and usually four to eight words.

### Technical labels and metadata

- Preferred: **IBM Plex Mono**.
- Installed fallback: **Menlo** or **SF Mono**.
- Use for episode labels, timecodes, speaker metadata, terminal prompts, and diagram labels.
- Never use mono for long caption paragraphs.

### Body copy and captions

- Preferred: **Inter**.
- Installed fallback: **Helvetica Neue** or **Arial**.
- Use sentence case for captions and supporting copy.

Do not silently substitute fonts. Record the actual family used in the delivery manifest.

## 5. Canonical episode and asset naming

- Cover label: `EP. 000`, `EP. 001`, `EP. 042`.
- Long-form metadata: `Episode 0`, `Episode 1`, and so on.
- Clip identifier: `rd-ep000-short-01-topic-v01`.
- Timeline: `RD | EP. 000 | SHORT 01 | Topic | 9x16 | v01`.

Use three digits in graphical episode labels so the system remains aligned as the catalogue grows.

## 6. Cover system

Every cover needs four layers:

1. **Episode tag:** small mono label in Phosphor Green by default, as in both templates; Signal Amber is the alternate.
2. **Headline:** large Dusty Cream condensed display type.
3. **Subject or technical motif:** a face, radio tower, server/node diagram, waveform, cassette, or terminal.
4. **System texture:** subtle grain, grid, halftone, registration marks, or scanlines.

Headline rules:

- State a tension, contradiction, or specific idea.
- Prefer `CONSENSUS, BUT MAKE IT WEIRD` over a generic `DISTRIBUTED SYSTEMS PODCAST`.
- Avoid misleading clickbait and vague superlatives.
- Keep important words visible at 25% scale.
- Do not cover eyes, mouths, or the principal technical diagram.

## 7. Platform compositions

### Vertical Reels/TikTok/Shorts — 1080×1920

- Keep essential content at least 80 px from each side.
- Reserve roughly 160 px at the top and 300 px at the bottom for platform UI.
- Put the cover headline in the upper-middle safe region, usually between y=180 and y=650.
- Keep captions above the bottom interface zone; their lower edge should normally sit above y=1580.
- Crop for the speaking face; do not leave vertical gaps or letterboxing.

### YouTube — 1920×1080

- Keep essential text 120 px from left/right and 90 px from top/bottom.
- Favor face on one third and headline/diagram on the opposing two thirds.
- Maintain enough contrast for small home-page thumbnails.

### Square — 1080×1080

- Keep essential content 80 px inside every edge.
- Use a stacked headline and one strong motif rather than shrinking a horizontal layout.

## 8. Captions and speaker labels

- Use a Graphite or Midnight caption bed at 75–85% opacity.
- Use Dusty Cream or white for spoken words.
- Use Phosphor Green for `LOIS` and Signal Amber for `JACOB`. On a speaker label the colour only identifies the host; it carries no success or warning meaning there.
- Use uppercase mono labels and sentence-case sans-serif dialogue.
- Limit captions to two lines and approximately 32–42 characters per line.
- Break on phrases, not mechanically at a fixed character count.
- Keep a caption on screen long enough to read, normally 0.8–3.5 seconds.
- Never obscure the active speaker's mouth.
- Keep captions editable in Resolve; burn them only into publish renders.

## 9. Lower thirds and information cards

Lower thirds should resemble terminal or broadcast metadata:

```text
> LOIS // HOST
  distributed systems, companies, and people
```

- Use mono labels with a small Phosphor Green prompt or node.
- Use Graphite panels with a one-pixel Dusty Cream or Steel Blue rule.
- Prefer squared or lightly rounded corners; avoid glossy pills.
- Enter in 6–10 frames and hold without constant animation.

## 10. Motion language

- Default transition: hard cut.
- Dialogue transitions: J-cuts and L-cuts before decorative transitions.
- Graphic entrances: 6–12 frame snap, terminal type-on, line-draw, or short analog roll.
- Diagram motion should show information flow: nodes connect, packets move, waves propagate.
- Grain and scanlines should remain subtle and stable enough not to damage compression.
- A hook may use a short radio-tune click, tape engage, modem chirp, or filtered impact; avoid generic cinematic booms and constant whooshes.
- Do not animate every layer. One primary motion idea per beat is enough.

## 11. Color grading footage

- Natural skin tone is the first constraint.
- Do not darken or recolor a person to make footage match the palette.
- Use Midnight Black and Graphite in backgrounds, shadows, frames, and graphics—not as a skin wash.
- Protect facial highlights and avoid crushed hair detail.
- Match Lois and Jacob shot-to-shot before adding any stylized look.
- Apply retro texture to an adjustment layer so it remains reversible.

## 12. DaVinci Resolve track structure

Recommended vertical timeline:

```text
V5  texture / scanlines / grain
V4  diagrams / screenshots / supporting overlays
V3  editable cover title / hook graphics
V2  active-speaker picture or reframed crop
V1  base picture
ST1 captions
A4  hook and transition sound design
A3  room tone / ambience
A2  isolated or backup dialogue
A1  cleaned dialogue master
```

This is the same track layout as `dialogue-reels-editing`; change both together.

Name every graphic and compound clip. Keep source audio linked until lip-sync is verified. Save a versioned timeline before ripple edits or batch subtitle changes.

## 13. Cover and edit QA

Before delivery, verify:

- the episode tag uses the canonical `EP. 000` format
- the headline is legible at 25% scale
- the cover still represents the actual clip
- faces and mouths are unobstructed
- active speaker framing is correct at every speaker change
- captions are complete, sensibly broken, and inside the safe zone
- skin tone remains natural
- accents follow their semantic roles
- overlays and textures remain editable
- no borders, letterboxing, or unintended vertical gaps appear
- clean master, editable timeline, caption file, cover still, and publish render are all present

## 14. Do / do not

Do:

- combine strong editorial type with real systems motifs
- use randomness as a controlled surprise
- build reusable Resolve title and Fusion templates
- keep episode and asset metadata consistent

Do not:

- imitate generic hacker-green code rain
- use bright accents on every object
- add fake diagrams that communicate nothing
- obscure a speaker for visual texture
- flatten the only editable version
