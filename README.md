<img src="assets/icon.svg" width="64" height="64" alt="">

# skills

Reusable agent skills published by Ice Lab Research.

Tools for working with media, published by [Ice Lab](https://icelab.sh).

## available skills

| Skill | Purpose |
|---|---|
| [`dialogue-reels-editing`](skills/dialogue-reels-editing/SKILL.md) | Edit multi-speaker podcast and interview footage into synced, captioned, studio-polished short-form video. |
| [`randomly-distributed-video-brand`](skills/randomly-distributed-video-brand/SKILL.md) | Apply the show's retro-technical identity to covers, captions, and video graphics. |
| [`studio-audio-verifying`](skills/studio-audio-verifying/SKILL.md) | Diagnose and verify spoken-audio cleanup for publishable video and podcasts. |

Routing notes are in [`RESOLVER.md`](RESOLVER.md). The machine-readable package index is in [`manifest.json`](manifest.json).

## install

Install a skill with the [skills CLI](https://github.com/vercel-labs/skills):

```bash
npx skills add icelab-research/skills --skill dialogue-reels-editing
npx skills add icelab-research/skills --skill randomly-distributed-video-brand
npx skills add icelab-research/skills --skill studio-audio-verifying
```

The CLI copies the whole skill directory, so each `SKILL.md` keeps its local assets, templates, scripts, and guidance.

## license

[MIT](LICENSE)
