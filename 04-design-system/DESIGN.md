# Design System

Part of M10: The Marketing Foundation 10 by imFORZA.

## How to use this file

- **What goes in:** The machine-readable encoding of the visual brand. Tokens in Markdown mirror the JSON in `theme.json`. This file also documents how components should be built from those tokens.
- **How agents read it:** Layout agents, code-generation agents, and CMS theme builders load `DESIGN.md` plus `theme.json` to render on-brand components without reading the visual brand guide.
- **Update cadence:** Update in lockstep with `/03-visual/VISUAL-BRAND.md`. Any change to a token must appear in both files and in `theme.json`.
- **Related open spec:** Google Labs [open-sourced a DESIGN.md draft specification](https://blog.google/innovation-and-ai/models-and-research/google-labs/stitch-design-md/) via the Stitch design tool in April 2026. This template is compatible in spirit (machine-readable tokens, WCAG-aware, component intent spelled out). Adopt stricter Stitch-spec sections as that spec stabilizes for cross-platform portability.

## AI-agent-ready checklist

- [ ] Machine-readable: tokens in predictable tables.
- [ ] Structured: color, typography, spacing, radius, shadow, motion, breakpoint, component sections.
- [ ] Single source of truth: paired with `/04-design-system/theme.json`.
- [ ] Versioned: version and change log.
- [ ] Cite-able: agents cite `/04-design-system/DESIGN.md` and `/04-design-system/theme.json` when generating components.

Version: 1.0.0
Last updated: [YYYY-MM-DD]

---

## Token naming

- Tokens use a three-part dash-separated name: `[category]-[role]-[modifier]`.
- Categories: `color`, `fs`, `space`, `radius`, `shadow`, `motion`, `bp`.
- Roles describe intent: `brand`, `neutral`, `semantic`.
- Modifiers describe scale or state: `primary`, `hover`, `fg`, `50`, `100`.

Examples:

- `--color-brand-primary`
- `--color-brand-primary-hover`
- `--color-brand-primary-fg`
- `--color-neutral-500`
- `--fs-body`
- `--space-4`
- `--radius-md`
- `--shadow-lg`
- `--motion-duration-base`

## Color tokens

### Brand

| Token | OKLCH | Hex |
| --- | --- | --- |
| `color.brand.primary` | `oklch(0.34 0.07 240)` | `#0B3A5B` |
| `color.brand.primary.hover` | `oklch(0.42 0.08 240)` | `#124D7A` |
| `color.brand.primary.fg` | `oklch(1.00 0 0)` | `#FFFFFF` |
| `color.brand.secondary` | `oklch(0.69 0.17 52)` | `#D97706` |
| `color.brand.secondary.hover` | `oklch(0.60 0.15 50)` | `#B45309` |
| `color.brand.secondary.fg` | `oklch(1.00 0 0)` | `#FFFFFF` |
| `color.accent.1` | `oklch(0.71 0.17 162)` | `#10B981` |
| `color.accent.2` | `oklch(0.60 0.20 270)` | `#6366F1` |

### Neutral

| Token | OKLCH | Hex |
| --- | --- | --- |
| `color.neutral.0` | `oklch(1.00 0 0)` | `#FFFFFF` |
| `color.neutral.50` | `oklch(0.98 0.01 240)` | `#F8FAFC` |
| `color.neutral.100` | `oklch(0.96 0.01 240)` | `#F1F5F9` |
| `color.neutral.200` | `oklch(0.92 0.02 240)` | `#E2E8F0` |
| `color.neutral.300` | `oklch(0.85 0.02 240)` | `#CBD5E1` |
| `color.neutral.400` | `oklch(0.72 0.03 240)` | `#94A3B8` |
| `color.neutral.500` | `oklch(0.55 0.03 240)` | `#64748B` |
| `color.neutral.700` | `oklch(0.35 0.03 240)` | `#334155` |
| `color.neutral.900` | `oklch(0.17 0.03 240)` | `#0F172A` |

### Semantic

| Token | Hex |
| --- | --- |
| `color.semantic.success` | `#10B981` |
| `color.semantic.warning` | `#F59E0B` |
| `color.semantic.danger` | `#EF4444` |
| `color.semantic.info` | `#3B82F6` |

## Typography tokens

| Token | Family | Size (px) | Line height | Weight | Tracking |
| --- | --- | --- | --- | --- | --- |
| `fs.display.xl` | Display | 72 | 1.05 | 700 | -0.02em |
| `fs.display.lg` | Display | 56 | 1.1 | 700 | -0.02em |
| `fs.h1` | Display | 44 | 1.15 | 700 | -0.01em |
| `fs.h2` | Display | 32 | 1.2 | 600 | 0 |
| `fs.h3` | Body | 24 | 1.3 | 600 | 0 |
| `fs.h4` | Body | 20 | 1.35 | 600 | 0 |
| `fs.body.lg` | Body | 18 | 1.6 | 400 | 0 |
| `fs.body` | Body | 16 | 1.6 | 400 | 0 |
| `fs.body.sm` | Body | 14 | 1.55 | 400 | 0.005em |
| `fs.mono` | Mono | 14 | 1.55 | 400 | 0 |

## Spacing tokens

| Token | Value |
| --- | --- |
| `space.0` | 0 |
| `space.1` | 4px |
| `space.2` | 8px |
| `space.3` | 12px |
| `space.4` | 16px |
| `space.5` | 20px |
| `space.6` | 24px |
| `space.8` | 32px |
| `space.10` | 40px |
| `space.12` | 48px |
| `space.16` | 64px |
| `space.20` | 80px |
| `space.24` | 96px |

## Radius tokens

| Token | Value |
| --- | --- |
| `radius.none` | 0 |
| `radius.sm` | 4px |
| `radius.md` | 8px |
| `radius.lg` | 16px |
| `radius.xl` | 24px |
| `radius.pill` | 9999px |

## Shadow tokens

| Token | Value |
| --- | --- |
| `shadow.sm` | `0 1px 2px 0 rgb(15 23 42 / 0.06)` |
| `shadow.md` | `0 4px 8px -2px rgb(15 23 42 / 0.08), 0 2px 4px -2px rgb(15 23 42 / 0.06)` |
| `shadow.lg` | `0 12px 24px -8px rgb(15 23 42 / 0.12), 0 4px 8px -4px rgb(15 23 42 / 0.08)` |
| `shadow.xl` | `0 24px 48px -12px rgb(15 23 42 / 0.18)` |

## Motion tokens

| Token | Value |
| --- | --- |
| `motion.duration.fast` | 120ms |
| `motion.duration.base` | 180ms |
| `motion.duration.medium` | 240ms |
| `motion.duration.slow` | 320ms |
| `motion.easing.enter` | `cubic-bezier(0.4, 0, 0.2, 1)` |
| `motion.easing.exit` | `cubic-bezier(0.2, 0.8, 0.2, 1)` |

## Breakpoint tokens

| Token | Min width |
| --- | --- |
| `bp.sm` | 640px |
| `bp.md` | 768px |
| `bp.lg` | 1024px |
| `bp.xl` | 1280px |
| `bp.2xl` | 1536px |

## CSS variable reference

Paste into any web project's global stylesheet. The token names map 1:1 to `theme.json`.

```css
:root {
  --color-brand-primary: oklch(0.34 0.07 240);
  --color-brand-primary-hover: oklch(0.42 0.08 240);
  --color-brand-primary-fg: oklch(1.00 0 0);
  --color-brand-secondary: oklch(0.69 0.17 52);
  --color-accent-1: oklch(0.71 0.17 162);
  --color-accent-2: oklch(0.60 0.20 270);

  --color-neutral-0: oklch(1.00 0 0);
  --color-neutral-50: oklch(0.98 0.01 240);
  --color-neutral-100: oklch(0.96 0.01 240);
  --color-neutral-200: oklch(0.92 0.02 240);
  --color-neutral-500: oklch(0.55 0.03 240);
  --color-neutral-700: oklch(0.35 0.03 240);
  --color-neutral-900: oklch(0.17 0.03 240);

  --color-semantic-success: #10B981;
  --color-semantic-warning: #F59E0B;
  --color-semantic-danger: #EF4444;
  --color-semantic-info: #3B82F6;

  --fs-body: 16px;
  --fs-h1: 44px;
  --fs-h2: 32px;
  --fs-h3: 24px;

  --space-1: 4px;
  --space-2: 8px;
  --space-4: 16px;
  --space-6: 24px;
  --space-8: 32px;
  --space-12: 48px;

  --radius-md: 8px;
  --radius-lg: 16px;

  --shadow-sm: 0 1px 2px 0 rgb(15 23 42 / 0.06);
  --shadow-md: 0 4px 8px -2px rgb(15 23 42 / 0.08), 0 2px 4px -2px rgb(15 23 42 / 0.06);

  --motion-duration-base: 180ms;
  --motion-easing-enter: cubic-bezier(0.4, 0, 0.2, 1);
}
```

## How components should be built

### Button

- Use `--color-brand-primary` for the default background.
- Text uses `--color-brand-primary-fg`.
- Padding is `--space-3` vertical, `--space-5` horizontal.
- Radius is `--radius-md`.
- Hover background swaps to `--color-brand-primary-hover`.
- Focus state: 2 px outer ring using `--color-brand-primary`, offset 2 px.
- Disabled state: 40 percent opacity, cursor not-allowed.
- Secondary button uses `--color-brand-secondary`. Ghost button uses `transparent` background and `--color-brand-primary` text with a 1 px border.

### Input

- Background is `--color-neutral-0`.
- Border is 1 px using `--color-neutral-200`.
- Radius is `--radius-md`.
- Padding is `--space-3` vertical, `--space-4` horizontal.
- Placeholder text uses `--color-neutral-500`.
- Focus ring is 2 px using `--color-brand-primary` with 2 px offset.
- Error state uses `--color-semantic-danger` border and helper text.

### Card

- Background is `--color-neutral-0`.
- Border is 1 px using `--color-neutral-200`.
- Radius is `--radius-lg`.
- Padding is `--space-6`.
- Shadow starts at `--shadow-sm` and lifts to `--shadow-md` on hover if interactive.

### Link

- Default color is `--color-brand-primary`.
- Underline on hover. Do not use underline by default in body text unless the link is inside a paragraph that requires it.
- Visited links use the same color by default. Override only in editorial contexts.

### Badge

- Background is `--color-neutral-100`.
- Text is `--color-neutral-700`.
- Radius is `--radius-pill`.
- Padding is `--space-1` vertical, `--space-3` horizontal.
- Typography is `fs-body-sm`, weight 500.

### Alert

- Success uses `--color-semantic-success` with a soft background and dark text.
- Warning uses `--color-semantic-warning`.
- Danger uses `--color-semantic-danger`.
- Info uses `--color-semantic-info`.
- Each alert has an icon on the left, a heading in weight 600, a short description in weight 400.

### Navigation

- Default link color is `--color-neutral-700`.
- Active link color is `--color-brand-primary` with a 2 px underline the same color.
- Mobile nav is a slide-over from the right, respecting reduced motion.

## Component do and do not

- **Do** reference tokens, not values.
- **Do** use the semantic color tokens only for status.
- **Do not** invent new hex values in a component file.
- **Do not** use box shadow for emphasis when a border would do.
- **Do not** use more than one shadow token in a single component.

## Feeding this asset to an AI agent

```text
Load /04-design-system/DESIGN.md and /04-design-system/theme.json before generating any UI code.

When you write a component:
1. Use CSS variables that match the token names in theme.json.
2. Do not hard-code colors, font sizes, or spacing values.
3. Every interactive component has a focus state and a disabled state.
4. Every text color pairs with a background color that passes WCAG 2.2 AA.
5. Respect motion tokens and prefers-reduced-motion.

Cite /04-design-system/DESIGN.md in the header comment of any generated component file.
```

## Change log

| Date | Version | Change | Author |
| --- | --- | --- | --- |
| [YYYY-MM-DD] | 1.0.0 | Initial version. | [Name] |

Reference paths: `/04-design-system/DESIGN.md`, `/04-design-system/theme.json`, `/03-visual/VISUAL-BRAND.md`.
