# Visual Brand System

Part of M10: The Marketing Foundation 10 by imFORZA.

## How to use this file

- **What goes in:** Every rule about how the brand appears visually. Logo, color, type, spacing, radius, shadow, motion, accessibility.
- **How agents read it:** Image generators, designers, and layout agents pull rules from here. Design tokens in `/04-design-system/theme.json` are derived from this file.
- **Update cadence:** Review annually. Version any change with a dated entry in the change log at the bottom.

## AI-agent-ready checklist

- [ ] Machine-readable: rules expressed as tables of tokens.
- [ ] Structured: one system per H2 (logo, color, typography, spacing, radius, shadow, motion, accessibility).
- [ ] Single source of truth: paired with `/04-design-system/theme.json`.
- [ ] Versioned: last-updated date and change log.
- [ ] Cite-able: agents cite `/03-visual/VISUAL-BRAND.md` when producing visual assets.

Last updated: [YYYY-MM-DD]

---

## Logo system

### Primary logo

- **File:** `/03-visual/assets/logo-primary.svg`
- **Usage:** Default mark for digital and print where clear space and scale allow.
- **Minimum width:** 120 px digital, 1.25 in print.
- **Clear space:** Equal to the cap-height of the wordmark on all sides.

### Secondary logo (horizontal or stacked)

- **File:** `/03-visual/assets/logo-secondary.svg`
- **Usage:** Use when the primary logo does not fit the container ratio.
- **Minimum width:** 96 px digital, 1.0 in print.

### Monochrome logo

- **File:** `/03-visual/assets/logo-monochrome.svg`
- **Usage:** On colored backgrounds, printed receipts, single-color print, engraving, embroidery, social avatars.

### Icon mark

- **File:** `/03-visual/assets/logo-icon.svg`
- **Usage:** Favicon, social avatars, app icons, loading states.
- **Minimum size:** 24 x 24 px.

### Logo do and do not

**Do**

- Keep the clear space.
- Use the provided SVGs. Do not rebuild.
- Use the monochrome version on busy backgrounds.
- Use the icon mark for small formats.

**Do not**

- Stretch or squish.
- Add a shadow, outline, or glow.
- Rotate except in approved motion patterns.
- Recolor outside the approved palette.
- Place on a low-contrast background.

## Color system

Use tokens. Every color has a role. Do not invent new hex values.

### Primary

| Token | Role | Hex | RGB | HSL | OKLCH |
| --- | --- | --- | --- | --- | --- |
| `--color-brand-primary` | Hero elements, primary CTA | `#0B3A5B` | `11, 58, 91` | `207, 78%, 20%` | `oklch(0.34 0.07 240)` |
| `--color-brand-primary-hover` | Hover state for primary | `#124D7A` | `18, 77, 122` | `209, 74%, 27%` | `oklch(0.42 0.08 240)` |
| `--color-brand-primary-fg` | Text on primary | `#FFFFFF` | `255, 255, 255` | `0, 0%, 100%` | `oklch(1.00 0 0)` |

### Secondary

| Token | Role | Hex | RGB | HSL | OKLCH |
| --- | --- | --- | --- | --- | --- |
| `--color-brand-secondary` | Supporting elements | `#D97706` | `217, 119, 6` | `31, 95%, 44%` | `oklch(0.69 0.17 52)` |
| `--color-brand-secondary-hover` | Hover state for secondary | `#B45309` | `180, 83, 9` | `29, 91%, 37%` | `oklch(0.60 0.15 50)` |
| `--color-brand-secondary-fg` | Text on secondary | `#FFFFFF` | `255, 255, 255` | `0, 0%, 100%` | `oklch(1.00 0 0)` |

### Accent

| Token | Role | Hex | RGB | HSL | OKLCH |
| --- | --- | --- | --- | --- | --- |
| `--color-accent-1` | Highlight, tag, callout | `#10B981` | `16, 185, 129` | `160, 84%, 39%` | `oklch(0.71 0.17 162)` |
| `--color-accent-2` | Chart secondary | `#6366F1` | `99, 102, 241` | `239, 84%, 67%` | `oklch(0.60 0.20 270)` |

### Neutrals

| Token | Role | Hex | RGB | OKLCH |
| --- | --- | --- | --- | --- |
| `--color-neutral-0` | Page background | `#FFFFFF` | `255, 255, 255` | `oklch(1.00 0 0)` |
| `--color-neutral-50` | Card background | `#F8FAFC` | `248, 250, 252` | `oklch(0.98 0.01 240)` |
| `--color-neutral-100` | Section background | `#F1F5F9` | `241, 245, 249` | `oklch(0.96 0.01 240)` |
| `--color-neutral-200` | Borders, dividers | `#E2E8F0` | `226, 232, 240` | `oklch(0.92 0.02 240)` |
| `--color-neutral-500` | Secondary text | `#64748B` | `100, 116, 139` | `oklch(0.55 0.03 240)` |
| `--color-neutral-700` | Body text | `#334155` | `51, 65, 85` | `oklch(0.35 0.03 240)` |
| `--color-neutral-900` | Headings | `#0F172A` | `15, 23, 42` | `oklch(0.17 0.03 240)` |

### Semantic

| Token | Role | Hex |
| --- | --- | --- |
| `--color-success` | Success states | `#10B981` |
| `--color-warning` | Warning states | `#F59E0B` |
| `--color-danger` | Error states | `#EF4444` |
| `--color-info` | Info banners | `#3B82F6` |

### Color usage rules

- Primary brand color on hero, primary CTA, and key navigation.
- Secondary brand color on secondary CTA, tags, and highlight moments. Never stacked against primary at full saturation.
- Neutrals carry the page. 80 percent of any layout is neutrals.
- Semantic colors are reserved for status. Do not use red for a visual accent.

## Typography

### Display

- **Font family:** [e.g., "Satoshi", "Inter Display", or your licensed display face]
- **Weights used:** 600, 700.
- **Web source:** [self-hosted, Google Fonts, Adobe Fonts, or licensed provider]
- **Fallback stack:** `"Satoshi", "Inter", system-ui, -apple-system, "Segoe UI", Roboto, sans-serif`

### Body

- **Font family:** [e.g., "Inter", "IBM Plex Sans"]
- **Weights used:** 400, 500, 600.
- **Fallback stack:** `"Inter", system-ui, -apple-system, "Segoe UI", Roboto, sans-serif`

### Mono

- **Font family:** [e.g., "JetBrains Mono", "IBM Plex Mono"]
- **Weights used:** 400, 500.
- **Fallback stack:** `"JetBrains Mono", "IBM Plex Mono", "Menlo", "Consolas", monospace`

### Type scale

| Token | Role | Size (px) | Line height | Weight | Tracking |
| --- | --- | --- | --- | --- | --- |
| `--fs-display-xl` | Hero | 72 | 1.05 | 700 | -0.02em |
| `--fs-display-lg` | Secondary hero | 56 | 1.1 | 700 | -0.02em |
| `--fs-h1` | Page title | 44 | 1.15 | 700 | -0.01em |
| `--fs-h2` | Section | 32 | 1.2 | 600 | 0 |
| `--fs-h3` | Sub-section | 24 | 1.3 | 600 | 0 |
| `--fs-h4` | Small heading | 20 | 1.35 | 600 | 0 |
| `--fs-body-lg` | Lead paragraph | 18 | 1.6 | 400 | 0 |
| `--fs-body` | Default body | 16 | 1.6 | 400 | 0 |
| `--fs-body-sm` | Captions, meta | 14 | 1.55 | 400 | 0.005em |
| `--fs-mono` | Code | 14 | 1.55 | 400 | 0 |

### Print scale

- H1: 36 pt.
- H2: 24 pt.
- Body: 10.5 to 11 pt, 1.45 line height.
- Captions: 8.5 pt.

## Spacing

Spacing follows a 4 px base unit. Compose layouts from the token set.

| Token | Value |
| --- | --- |
| `--space-0` | 0 |
| `--space-1` | 4px |
| `--space-2` | 8px |
| `--space-3` | 12px |
| `--space-4` | 16px |
| `--space-5` | 20px |
| `--space-6` | 24px |
| `--space-8` | 32px |
| `--space-10` | 40px |
| `--space-12` | 48px |
| `--space-16` | 64px |
| `--space-20` | 80px |
| `--space-24` | 96px |

## Radius

| Token | Value | Usage |
| --- | --- | --- |
| `--radius-none` | 0 | Data tables, banners |
| `--radius-sm` | 4px | Tags, small inputs |
| `--radius-md` | 8px | Buttons, inputs, cards |
| `--radius-lg` | 16px | Cards, modals |
| `--radius-xl` | 24px | Feature blocks |
| `--radius-pill` | 9999px | Pills, badges, avatars |

## Shadow

| Token | Value |
| --- | --- |
| `--shadow-sm` | `0 1px 2px 0 rgb(15 23 42 / 0.06)` |
| `--shadow-md` | `0 4px 8px -2px rgb(15 23 42 / 0.08), 0 2px 4px -2px rgb(15 23 42 / 0.06)` |
| `--shadow-lg` | `0 12px 24px -8px rgb(15 23 42 / 0.12), 0 4px 8px -4px rgb(15 23 42 / 0.08)` |
| `--shadow-xl` | `0 24px 48px -12px rgb(15 23 42 / 0.18)` |

## Motion

- **Base duration:** 180 ms for micro-interactions, 240 ms for overlays, 320 ms for page transitions.
- **Easing:** `cubic-bezier(0.2, 0.8, 0.2, 1)` for exits, `cubic-bezier(0.4, 0, 0.2, 1)` for entrances.
- **Motion reduction:** Respect `prefers-reduced-motion`. Fade only, no parallax or slide.

## Breakpoints

| Token | Min width |
| --- | --- |
| `--bp-sm` | 640px |
| `--bp-md` | 768px |
| `--bp-lg` | 1024px |
| `--bp-xl` | 1280px |
| `--bp-2xl` | 1536px |

## Accessibility

- Minimum contrast: WCAG 2.2 AA. That is 4.5:1 for body text and 3:1 for large text (18pt regular or 14pt bold and larger).
- Buttons must meet 3:1 against their background in their default state.
- Focus states must be visible. Minimum 2 px ring, offset 2 px, using `--color-brand-primary` on light backgrounds and `--color-brand-primary-hover` on dark.
- Tap targets are 44 x 44 px minimum.
- Never convey meaning with color alone. Pair color with an icon or a label.
- Image alt text is a required field in every CMS template.

## Dark mode

Decide once. If you offer dark mode, define the mirrored palette with the same tokens and document it here. If you do not, state that in this section so agents do not assume dark variants exist.

## Worked example

### Cypress Coffee Co. visual brand

- Primary color: Deep Roast `#3B2417`.
- Secondary color: Cortado Cream `#E6D8B6`.
- Accent: Crema Orange `#E08E45`.
- Type: "Recoleta" for display, "Inter" for body, "JetBrains Mono" for code.
- Imagery: Hero photography is close-up, natural-light shots of green coffee, roast drums, and hand pours. No people in wide shots, only hands in close-up.
- Motion: Slow fades. No parallax.

## Feeding this asset to an AI agent

```text
Load /03-visual/VISUAL-BRAND.md and /04-design-system/theme.json before producing visuals.

When you generate or assemble an image:
1. Use only colors listed in the Color system tables.
2. Use only typefaces listed in the Typography tables, or a close licensed substitute named in that section.
3. Respect the spacing, radius, and shadow tokens for any UI rendering.
4. Respect the motion and reduced-motion rules for any animated asset.
5. Run the accessibility check before finalizing.

If the request would require colors, type, or motion outside these systems, stop and ask the human for an exception.
```

## Change log

| Date | Change | Author |
| --- | --- | --- |
| [YYYY-MM-DD] | Initial version. | [Name] |

Reference paths: `/03-visual/VISUAL-BRAND.md`, `/03-visual/IMAGERY.md`, `/03-visual/AI-IMAGE-PROMPTS.md`, `/04-design-system/DESIGN.md`, `/04-design-system/theme.json`.
