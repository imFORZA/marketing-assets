# Imagery Direction

Part of M10: The Marketing Foundation 10 by imFORZA.

## How to use this file

- **What goes in:** Rules for every image, illustration, icon, screenshot, and user-generated piece of media that carries the brand.
- **How agents read it:** Image-generation and design agents read this file to pick subject, composition, lighting, color, and style. When a rule conflicts with a user request, agents default to this file.
- **Update cadence:** Review twice per year. Update whenever the brand expands into a new product or region.

## AI-agent-ready checklist

- [ ] Machine-readable: rules expressed as tables with direction, do, do-not, and examples.
- [ ] Structured: photography, illustration, iconography, screenshots, UGC, and banned styles each in their own section.
- [ ] Single source of truth: no separate imagery rules buried in a PowerPoint.
- [ ] Versioned: last-updated date.
- [ ] Cite-able: agents cite `/03-visual/IMAGERY.md` in image generation requests.

Last updated: [YYYY-MM-DD]

---

## Photography direction

### Subject

- **Primary subjects:** [People working, product in use, the workspace, the tool in action]
- **Secondary subjects:** [Materials, textures, close-up details]
- **Never photograph:** [List anything off-limits]

### Composition

- Rule of thirds, never centered unless the brand is deliberately editorial.
- Wide establishing shot plus medium work shot plus macro detail. Cover all three per subject.
- Negative space on one side so copy can overlay without a blur box.
- Horizons are level. No Dutch angles unless justified editorially.

### Lighting

- Natural light preferred. Morning and late-afternoon golden windows.
- Overcast is acceptable. Harsh noon light is not.
- Studio shots use a single primary light source with a soft fill. No hard key lights.

### Color treatment

- Match the palette defined in `/03-visual/VISUAL-BRAND.md`.
- Slight warm tint to match brand temperature.
- Desaturate greens and blues by 5 to 10 percent if the scene is already high chroma.
- Do not apply heavy filters. Keep skin tones accurate.

### People

- If the brand uses people in imagery, show a mix of genders, ages, and backgrounds that reflects the customer base.
- Show them working, not posing. Candid over staged.
- No stock-looking "business handshake" or "team around a laptop" shots.
- Hands-only close-ups are preferred when faces are not necessary.

### Props

- [List approved props that signal the category]
- [List banned props that signal cliché]

## Illustration style

- **Approach:** [e.g., flat vector with light grain, or line-and-wash, or geometric isometric]
- **Color:** Uses only tokens from the primary palette.
- **Line weight:** 1.5 to 2 px at 1x, scalable.
- **Corners:** Rounded to match `--radius-md`.
- **Shading:** Minimal. Flat fills plus one accent tone.
- **Avoid:** Gradients across three or more colors, drop shadows, 3D renders unless product-specific.

## Iconography

- **Source:** [Own library, or a specific pack such as Lucide, Phosphor, Heroicons]
- **Stroke width:** 1.5 to 2 px.
- **Fill:** Outline style default. Solid style for filled states only.
- **Sizing:** 16, 20, 24, 32 px.
- **Color:** Inherits from `currentColor`. Do not hard-code color.
- **Avoid:** Mixing two icon packs. Pick one and stay.

## Screenshots

- Capture at 2x on the exact target device frame.
- Use the approved device mock in `/03-visual/assets/device-frames/`.
- Crop to show the specific feature, never a blurred full screen.
- Redact personally identifiable info from every screenshot. Use demo data.
- Add a one-sentence caption under every screenshot that describes what the reader should see.

## Stock imagery rules

- Avoid generic stock ("business people shaking hands," "laptop on a desk with a plant").
- Prefer subscription libraries with original work (Stocksy, Unsplash+, Death to Stock) over the large generic libraries.
- Every stock image must pass a 10-second "does this look like 50 other ads" test. If yes, cut.
- Always license commercially. Never screenshot and crop.

## User-generated content

- Require written permission before using a customer photo, review screenshot, or social post in paid or anchored marketing.
- Credit the creator by name and handle every time.
- Do not heavily retouch UGC. Leave the grain. Leave the imperfection.
- Archive the permission form in `/03-visual/assets/ugc-permissions/`.

## Banned visual styles

- Neon cyberpunk gradient mush.
- Hand-drawn 3D blob characters with no feet.
- AI-generated photos with six fingers.
- Stock business handshake.
- Stock "hacker in a hoodie."
- Robot-brain-with-lightbulb clichés for AI content.
- Skyline-at-night for "business growth."
- Overly saturated landscapes that do not match the palette.
- Lens flare.
- Motivational quote typography on sunset background.

## Worked example

### Cypress Coffee Co. imagery

- Hero photos are shot at 6 to 7 a.m. when the roastery fills with morning light through west-facing windows.
- Close-ups of green coffee in burlap, hands on the drum controls, and the first pour into a ceramic cupping bowl.
- No people posed with coffee. Only hands in motion.
- Illustrations use a flat vector style in Deep Roast, Cortado Cream, and Crema Orange.
- Icons are Phosphor outline at 1.5 px.
- Screenshots show the roast scheduling dashboard with anonymized data, each cropped to a single workflow.

## Feeding this asset to an AI agent

```text
Load /03-visual/IMAGERY.md and /03-visual/VISUAL-BRAND.md before generating or curating any image.

Before finalizing an image:
1. Does the subject match the Primary Subjects list?
2. Does the composition follow the rule-of-thirds and negative-space rule?
3. Does the lighting match the direction (natural, soft, morning or golden-hour)?
4. Do the colors map to tokens in /03-visual/VISUAL-BRAND.md?
5. Does the style avoid everything in the Banned Visual Styles list?

If the request conflicts with any of the above, stop and flag for human review.
```

Reference paths: `/03-visual/IMAGERY.md`, `/03-visual/VISUAL-BRAND.md`, `/03-visual/AI-IMAGE-PROMPTS.md`.
