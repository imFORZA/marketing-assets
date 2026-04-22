# Visual Assets

This folder holds the binary files referenced by `/03-visual/VISUAL-BRAND.md`. The template pack ships empty because logo files, brand photography, and licensed fonts are company-specific.

## Expected files

Drop the following files here when you fork this repo into your own.

### Logos

- `logo-primary.svg`, Full-color primary logo.
- `logo-primary.png`, Primary logo at 2x for use where SVG is not supported.
- `logo-secondary.svg`, Horizontal or stacked variant.
- `logo-monochrome.svg`, Single-color version for busy backgrounds.
- `logo-monochrome-white.svg`, White version for dark backgrounds.
- `logo-icon.svg`, Icon-only mark for favicons and social avatars.
- `favicon.ico`, 16x16 and 32x32 combined favicon.
- `apple-touch-icon.png`, 180x180 for iOS home screen.

### Brand photography

- `hero-01.jpg`, Approved hero shot, 2560x1440.
- `hero-02.jpg`
- `hero-03.jpg`

### Device frames

- `device-frames/laptop-light.png`
- `device-frames/laptop-dark.png`
- `device-frames/phone-light.png`
- `device-frames/phone-dark.png`

### Fonts (if self-hosted)

- `fonts/display/`, Display font family files.
- `fonts/body/`, Body font family files.
- `fonts/mono/`, Mono font family files.

Include the font license text in each font folder.

### Generated image log

- `generation-log.md`, Append every AI-generated image to this file with the prompt, tool, date, and use case.

## Do not commit

- Any licensed font without a commercial license that permits redistribution.
- Any stock photo without a commercial license.
- Any customer photo without written permission.
- Any high-resolution raw file larger than 10 MB. Use a CDN or DAM instead.

## Accessibility reminder

Every logo variant must pass the 3:1 contrast check against the background it will appear on. Keep the monochrome versions ready for low-contrast situations.

Reference paths: `/03-visual/VISUAL-BRAND.md`, `/03-visual/IMAGERY.md`, `/03-visual/AI-IMAGE-PROMPTS.md`.
