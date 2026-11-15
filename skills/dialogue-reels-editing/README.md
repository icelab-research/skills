# Dialogue Reels Editing Skill

An open-source-ready agent skill for turning multi-speaker podcast and interview footage into concise vertical clips without sacrificing meaning, lip-sync, speaker visibility, audio continuity, or caption quality.

## Focus

- context-aware silence and filler removal
- frame-accurate audio/lip alignment
- active-speaker camera selection
- reversible Resolve timelines
- dialogue cleanup and loudness checks
- rights-aware meme/reaction overlays and selective sound design
- transparent studio-quality dialogue polish with an untreated backup
- complete, contextual subtitles
- 9:16 framing and delivery QA

## Install

```bash
npx skills add icelab-research/skills --skill dialogue-reels-editing
```

## Preflight

```bash
chmod +x scripts/reels_preflight.sh
scripts/reels_preflight.sh /absolute/path/to/short.mp4
```

The preflight is read-only. Its silence output is a proposal for human/contextual review, not an automatic deletion list.

## Companion skill

Pair this with the show's own brand skill or style guide for covers, captions, and motion.

## License

MIT. See the `LICENSE` file at the repository root.
