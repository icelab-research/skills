<img src="assets/icon.svg" width="64" height="64" alt="">

# skills

Reusable agent skills published by Ice Lab Research.

## available skills

| Skill | Purpose |
|---|---|
| [`dialogue-reels-editing`](skills/dialogue-reels-editing/SKILL.md) | Edit multi-speaker podcast and interview footage into synced, captioned, studio-polished short-form video. |

Routing notes are in [`RESOLVER.md`](RESOLVER.md). The machine-readable package index is in [`manifest.json`](manifest.json).

## install

Install a skill with the [skills CLI](https://github.com/vercel-labs/skills):

```bash
npx skills add icelab-research/skills --skill dialogue-reels-editing
```

The CLI copies the whole skill directory, so each `SKILL.md` keeps its local assets, templates, scripts, and guidance.

## license

[MIT](LICENSE)
