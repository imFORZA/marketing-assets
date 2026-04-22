# AI Image Prompts

Part of M10: The Marketing Foundation 10 by imFORZA.

## How to use this file

- **What goes in:** Baseline prompts for every image-generation tool the team uses. Each tool gets a template prompt plus three to five worked examples. Every prompt encodes the brand rules from `/03-visual/VISUAL-BRAND.md` and `/03-visual/IMAGERY.md`.
- **How agents read it:** Agents load this file when asked to generate an image. They start from the template for the tool, fill in the variable fields, and apply the universal modifiers.
- **Update cadence:** Review when any tool ships a major model update. Add a worked example every time a new use case clears review.

## AI-agent-ready checklist

- [ ] Machine-readable: one prompt per code block with clear variables.
- [ ] Structured: one H2 per tool.
- [ ] Single source of truth: no rogue prompt library in a Notion page.
- [ ] Versioned: each prompt has a version tag.
- [ ] Cite-able: agents cite `/03-visual/AI-IMAGE-PROMPTS.md` in image generation output.

Last updated: [YYYY-MM-DD]

---

## Universal modifiers

Always include. Paste at the end of every prompt.

**Always include**

- `color palette: [Deep Roast #3B2417, Cortado Cream #E6D8B6, Crema Orange #E08E45]` (replace with your palette)
- `composition: rule of thirds, negative space on one side`
- `lighting: soft natural morning light, no harsh shadows`
- `mood: practitioner, confident, grounded`
- `aspect ratio: [16:9 for hero, 1:1 for social, 4:5 for feed, 9:16 for story]`

**Always exclude**

- `--no lens flare, neon, cyberpunk, glitch, motivational quote typography, robot brain, lightbulb cliches, stock business handshake, six fingers, extra limbs, artifacts, text, watermarks, logos of other brands`

## Midjourney

### Template prompt

```
[SUBJECT in SETTING] --style raw --ar [ASPECT_RATIO] --v 6
color palette: [palette list]
composition: rule of thirds, negative space on [left/right]
lighting: soft natural morning light
mood: [mood adjectives]
--no lens flare, neon, cyberpunk, glitch, stock business handshake, six fingers, extra limbs, artifacts, text, watermarks
```

### Worked example 1: Hero photo, operations leader at a desk

```
A director of operations at a 50-person home services company, standing at a desk reviewing a printed dashboard, warehouse visible through a window behind, morning light --style raw --ar 16:9 --v 6
color palette: Deep Navy #0B3A5B, Warm White #F8FAFC, Amber #D97706
composition: rule of thirds, subject left, negative space right for copy
lighting: soft natural morning light, north-facing window
mood: practitioner, calm focus
--no lens flare, neon, cyberpunk, glitch, stock business handshake, six fingers, extra limbs, artifacts, text, watermarks
```

### Worked example 2: Close-up, hands on a keyboard with coffee

```
Close-up of adult hands typing on a minimalist laptop keyboard, a ceramic coffee mug on a wooden desk, handwritten notes visible --style raw --ar 4:5 --v 6
color palette: Deep Roast #3B2417, Cortado Cream #E6D8B6, Crema Orange #E08E45
composition: rule of thirds, shallow depth of field
lighting: soft window light from upper left
mood: focused, morning routine
--no lens flare, neon, cyberpunk, text, watermarks
```

### Worked example 3: Illustration, flat vector

```
Flat vector illustration of a layered stack of labeled folders representing marketing assets, each folder in a distinct brand color, isometric perspective --ar 1:1 --v 6
color palette: Deep Navy, Warm White, Amber, Sage Green
composition: centered, clean edges
lighting: flat, no gradients
mood: systems, clarity
--no 3D render, glitch, neon, text inside the folders
```

## Adobe Firefly

### Template prompt

```
[SUBJECT in SETTING], [STYLE], [LIGHTING], [COMPOSITION]
content type: [photo / illustration / art]
color: use only [palette list]
```

Set in the sidebar: aspect ratio, content type, visual intensity (subtle), and reference image if available.

### Worked example: Product shot

```
A specialty coffee bag with a minimalist label on a weathered wood surface, morning light, narrow depth of field
content type: photo
color: use only Deep Roast, Cortado Cream, Crema Orange
composition: rule of thirds, label top-right, negative space lower-left
```

### Worked example: Editorial illustration

```
A small business operator standing at a whiteboard labeled with ten boxes, the first three checked, rest empty, confident stance
content type: art
color: use only brand palette
composition: three-quarter figure, whiteboard right, space left
```

## Nano Banana (Google Gemini image generation)

### Template prompt

```
A [SUBJECT] in [SETTING]. Style: [photo | illustration]. Mood: [mood]. Lighting: [lighting]. Composition: [composition]. Color palette: [hex list]. Aspect ratio: [ratio]. Avoid: [banned styles].
```

### Worked example: Hero banner

```
A team of three people reviewing a wall-sized printout of a content calendar in a bright studio. Style: photo. Mood: practical, collaborative. Lighting: large north-facing window, soft overcast daylight. Composition: rule of thirds, group left, wall right. Color palette: #0B3A5B, #F8FAFC, #D97706, #10B981. Aspect ratio: 16:9. Avoid: lens flare, neon, glitch, six fingers, stock handshake.
```

## ChatGPT image generation (DALL-E 3 or native)

### Template prompt

```
Produce an image of [SUBJECT].
Style: [photo | flat vector | editorial illustration].
Lighting: [direction].
Composition: [rule, negative space side].
Color palette: use only these hex values: [list].
Aspect ratio: [ratio].
Do not include: lens flare, neon, cyberpunk, text, watermarks, six fingers, stock handshake.
```

### Worked example: Social feed image

```
Produce an image of a small business owner at a kitchen table reviewing a laptop dashboard, warm coffee in hand, early morning.
Style: photo.
Lighting: soft window light, warm, amber cast.
Composition: rule of thirds, subject right, empty space left.
Color palette: use only #0B3A5B, #F8FAFC, #D97706, #10B981, #3B2417.
Aspect ratio: 4:5.
Do not include: lens flare, neon, cyberpunk, text, watermarks, six fingers, stock handshake.
```

## Canva AI

### Template prompt

Canva uses a short text prompt plus controls. Use this shape.

```
[SUBJECT], [STYLE], [LIGHTING], [MOOD], no [banned styles]
```

Set style to "photo" or "illustration," aspect to the brand token, and add your brand kit colors in the prompt area.

### Worked example: LinkedIn single image

```
A woman running a small bakery checking a tablet by her counter, soft morning light through a front window, warm photo, no lens flare, no stock handshake
```

## Prompt do and do not

**Do**

- Name the subject first, the setting second, the style third.
- Include the full hex palette every time. Models do not remember session history.
- Add "no text" if text is likely to leak into the image.
- Use references in tools that support them. Upload your logo or a previous approved shot.

**Do not**

- Chain ten modifiers without structure.
- Ask for text inside the image. Generate the text in Figma or Canva later.
- Prompt for a real person by name without rights.
- Use the words "fun," "modern," or "innovative" as your only style cue.

## Variables glossary

| Variable | Description | Example |
| --- | --- | --- |
| `[SUBJECT]` | Who or what is in the image | "Director of operations" |
| `[SETTING]` | Where the subject is | "At a roastery workbench" |
| `[STYLE]` | Photo, illustration, or art | "Photo, editorial" |
| `[LIGHTING]` | Direction and quality | "Soft morning, north-facing window" |
| `[COMPOSITION]` | Framing and negative space | "Rule of thirds, subject left" |
| `[MOOD]` | Emotional tone | "Practitioner, calm focus" |
| `[ASPECT_RATIO]` | 16:9, 1:1, 4:5, 9:16 | "16:9" |
| `[PALETTE]` | Exact hex list | "#0B3A5B, #F8FAFC, #D97706" |

## Feeding this asset to an AI agent

```text
Load /03-visual/AI-IMAGE-PROMPTS.md, /03-visual/VISUAL-BRAND.md, and /03-visual/IMAGERY.md before generating images.

Workflow:
1. Identify the image use case (hero, social, editorial, product).
2. Pick the tool.
3. Copy the Template prompt for that tool.
4. Fill in the variables.
5. Append universal Always Include modifiers.
6. Append universal Always Exclude modifiers.
7. Generate three variations. Keep the one that best matches /03-visual/IMAGERY.md.
8. Log the final prompt and the chosen image in /03-visual/assets/generation-log.md so the library compounds.
```

Reference paths: `/03-visual/AI-IMAGE-PROMPTS.md`, `/03-visual/IMAGERY.md`, `/03-visual/VISUAL-BRAND.md`.
