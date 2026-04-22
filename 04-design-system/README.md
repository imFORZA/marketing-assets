# 04, Design System

The Identity Layer ends, the System layer begins. This folder translates the human-readable visual brand into machine-readable tokens that any framework, any agent, and any tool can consume without guessing.

## What this layer does

This folder encodes `/03-visual/VISUAL-BRAND.md` as tokens. Two files do the work.

- `DESIGN.md` is the practitioner guide. Plain-English rules for how components should be built, plus CSS variable examples and a component recipe list.
- `theme.json` is the parseable token file. Colors in OKLCH and hex, typography tokens, spacing, radius, shadow, motion, and breakpoints.

An agent that consumes `theme.json` can render on-brand UI without ever reading the brand guide. An agent that reads `DESIGN.md` can write on-brand code and on-brand components.

## Files in this folder

- `DESIGN.md`, Token-to-component map, naming rules, CSS variable examples, component patterns.
- `theme.json`, Design tokens in JSON.

## Build order inside this layer

1. Finish `/03-visual/VISUAL-BRAND.md` first.
2. Copy every token into `theme.json` with exact values.
3. Write `DESIGN.md` to describe how components use those tokens.

## What this folder feeds into

- `07-website` pulls tokens directly into the CMS theme.
- `10-brand-brain` loads tokens into agents that generate UI snippets.
- Any downstream tool (Figma, Webflow, WordPress, Framer, custom CMS) imports `theme.json`.

## Next layer

After this folder is filled in, move to `05-offer` to define what you sell.

Part of M10: The Marketing Foundation 10 by imFORZA.
