---
name: randomly-distributed-video-brand
description: |
  Apply the Randomly Distributed retro-technical identity to podcast videos,
  social covers, captions, lower thirds, thumbnails, and motion graphics. Use
  when creating or reviewing Randomly Distributed video assets for YouTube,
  Instagram Reels, TikTok, Spotify video, or promotional clips.
metadata:
  version: "1.0.0"
  short-description: Apply the Randomly Distributed video brand
---

# Randomly Distributed Video Brand

## Contract

- Uses the approved palette, type hierarchy, retro-broadcast motifs, and episode-label system.
- Produces editable titles and captions before producing burned-in publish files.
- Protects faces, lip visibility, captions, and platform interface safe zones.
- Keeps skin tones natural; green, amber, grain, and CRT effects belong to graphics and environments.
- Preserves a clean master and creates versioned platform exports.

## Phases

1. **Read the system.** Read `references/video-brand-guidelines.md` and inspect `assets/randomly-distributed-retro-brand-kit.png` before designing.
2. **Choose the deliverable.** Identify episode number, platform, aspect ratio, cover headline, speakers, and whether the result must remain editable in Resolve.
3. **Apply the hierarchy.** Use the canonical episode label, condensed display headline, mono technical labels, and clean sans-serif captions.
4. **Compose for the platform.** Use the safe zones and templates for 9:16, 16:9, or 1:1. Prioritize the current speaker's face and leave clean negative space for the headline.
5. **Add restrained texture and motion.** Use orbit lines, node diagrams, waveforms, scanlines, terminal cues, and radio motifs as supporting information—not decoration over faces.
6. **Build editably.** Keep cover title, speaker label, captions, diagrams, and texture on separate named tracks. Do not flatten the only editable version.
7. **Verify.** Inspect the first frame, a caption-heavy frame, a speaker switch, and the final frame at full resolution and at thumbnail size.
8. **Deliver.** Save the editable timeline or interchange file, clean media, caption file, cover still, and versioned publish render.

## Output Format

Deliver a compact manifest containing:

- episode and clip identifier
- platform, dimensions, frame rate, and duration
- cover headline and canonical episode label
- fonts used, including any fallback
- palette tokens used
- editable source path, caption path, cover path, and publish path
- verification result for safe zones, legibility, speaker framing, captions, and natural skin tone

## Anti-Patterns

- Do not use neon green as a skin-tone grade or full-frame wash.
- Do not mix unrelated cyberpunk, vaporwave, glossy SaaS, or generic gaming aesthetics into the retro-broadcast system.
- Do not use more than one display face, one mono face, and one body face in a single asset.
- Do not put headlines, logos, or captions under Reels/TikTok interface controls.
- Do not burn captions or cover text into the only editable master.
- Do not use `EPISODE 0`, `EP 0`, and `EP. 000` inconsistently; the canonical cover label is `EP. 000`.

## Tools Used

- **DaVinci Resolve:** editable Text+, subtitle, lower-third, color, and delivery tracks.
- **FFmpeg:** deterministic platform renders and technical validation.
- **ImageMagick:** cover previews, contact sheets, and thumbnail-size legibility checks.

## References

- `references/video-brand-guidelines.md` — complete visual and motion standard.
- `templates/vertical-cover.svg` — editable 1080×1920 cover skeleton.
- `templates/horizontal-cover.svg` — editable 1920×1080 thumbnail skeleton.
- `assets/palette.json` — machine-readable brand color tokens.
- `assets/randomly-distributed-retro-brand-kit.png` — supplied source design.
