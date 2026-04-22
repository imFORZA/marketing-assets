# 03, Visual Brand System

The Identity Layer closes here. You know who you serve. You know how you sound. Now you write down how you look.

## What this layer does

This folder is the visual source of truth. Logo rules, color system, typography, imagery direction, AI image prompts, and accessibility rules all live here. When a designer, a freelancer, or an image-generation agent produces an asset on your behalf, it pulls its rules from this folder.

This folder is the handoff from Identity (files 1-3) to System (file 4). It is written in plain language a human can read. The companion folder, `04-design-system`, is written in tokens a machine can read.

## Files in this folder

- `VISUAL-BRAND.md`, The full visual brand guide. Logo system, color palette, typography, spacing, radius, shadow, motion, accessibility rules.
- `IMAGERY.md`, Photography, illustration, iconography, stock image, UGC, and banned visual styles.
- `AI-IMAGE-PROMPTS.md`, Tested baseline prompts for Midjourney, Adobe Firefly, Nano Banana, ChatGPT image gen, Canva AI. Template plus worked examples.
- `assets/README.md`, Where binary assets (logo SVGs, PNGs, primary fonts) live. Placeholder, because the template pack ships without proprietary files.

## Build order inside this layer

1. Write `VISUAL-BRAND.md` first. Get the logo, palette, and type locked down.
2. Fill in `IMAGERY.md`. Decide the direction before generating anything.
3. Write `AI-IMAGE-PROMPTS.md` last. Prompts only work if the directions above are clear.

## What this folder feeds into

- `04-design-system` turns these rules into tokens.
- `07-website` applies the tokens to the site.
- `08-content` styles images and graphics from the imagery rules.
- `10-brand-brain` loads visual context into agents that generate images.

## Next layer

After this folder is filled in, move to `04-design-system` to encode the visual rules in machine-readable tokens.

Part of M10: The Marketing Foundation 10 by imFORZA.
