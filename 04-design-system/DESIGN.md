# Design System

Part of M10: The Marketing Foundation 10 by imFORZA.

## How to use this file

- **What goes in:** The machine-readable encoding of the visual brand. Tokens in Markdown mirror the JSON in `theme.json`. This file also documents how components should be built from those tokens.
- **How agents read it:** Layout agents, code-generation agents, and CMS theme builders load `DESIGN.md` plus `theme.json` to render on-brand components without reading the visual brand guide.
- **Update cadence:** Update in lockstep with `/03-visual/VISUAL-BRAND.md`. Any change to a token must appear in both files and in `theme.json`.
- **Related open spec:** Google Labs [open-sourced a DESIGN.md draft specification](https://blog.google/innovation-and-ai/models-and-research/google-labs/stitch-design-md/) via the Stitch design tool in April 2026. This template is compatible in spirit (machine-readable tokens, WCAG-aware, component intent spelled out). Adopt stricter Stitch-spec sections as that spec stabilizes for cross-platform portability.
- **Companion files in this folder:**
  - [`theme.json`](./theme.json): tokens in JSON for tools that prefer JSON.
  - [`tokens.css`](./tokens.css): the three-layer CSS variable file your components consume.
  - [`COMPONENT-SPEC-TEMPLATE.md`](./COMPONENT-SPEC-TEMPLATE.md): the 8-section template every component spec uses.
  - [`specs/`](./specs/): foundations, tokens, atoms, molecules, organisms, patterns.
  - [`REFERENCES.md`](./REFERENCES.md): AI-ready design systems worth studying.

## The four things a design system needs to be AI-ready

In one AI coding session, an LLM makes 200 to 300 silent visual decisions: what padding, what shade of blue, what border radius, what font weight. Each decision looks fine in isolation. Two hundred decisions later the prototype is off and you cannot say why. The next session the LLM starts over with zero memory of yesterday's choices and picks 200 new values. By session ten it looks like three products built by three teams who never spoke.

A design system is AI-ready when it constrains every one of those decisions:

1. **Spec files the AI reads every session.** Structured Markdown documents for foundations (color, spacing, typography, motion) and for each component. Solves the memory problem. If the spec does not exist, the AI guesses. If it exists, the AI looks it up. This repo's `specs/` folder is the implementation of this rule.
2. **A closed token layer the AI picks from.** Instead of hundreds of hardcoded hex values and pixel measurements scattered across files, one `tokens.css` with named variables. The AI cannot fabricate a new blue because the only blue it can reference is `var(--color-brand)`.
3. **An audit script that catches what the AI gets wrong.** A lint task that scans the codebase for hardcoded values and suggests the correct token for each violation. Runs in CI. `scripts/token-audit.sh` is the shipped reference implementation.
4. **Drift detection for upstream design systems.** If you depend on a component library (Atlaskit, Carbon, MUI, Radix, shadcn), a sync routine flags your spec files when the upstream ships changes so your specs stay current instead of quietly going stale.

Pattern credit: Hardik Pandya's teardown, [Expose your design system to LLMs](https://hvpandya.com/llm-design-systems). See [`REFERENCES.md`](./REFERENCES.md) for the four AI-ready design systems worth studying.

## Three-layer token architecture

The shape that makes all of this work is a token file with three layers of indirection.

```css
/* Layer 1: upstream design system tokens (raw values) */
--ds-text: #292A2E;
--ds-space-400: 16px;

/* Layer 2: your project aliases, with the raw value as fallback */
--color-text: var(--ds-text, #292A2E);
--space-400:  var(--ds-space-400, 16px);

/* Layer 3: components only reference aliases, never raw values */
color:   var(--color-text);
padding: var(--space-400);
```

The alias layer is what protects you. If the upstream library renames a token, you update one alias. Dark mode, high contrast, future themes: the chain resolves automatically. No component file ever touches a raw hex or pixel value.

The full file is `tokens.css` in this folder. Adopters should copy it, replace Layer 1 values with tokens from their actual upstream design system (or keep the raw fallbacks if they have no upstream), and keep Layer 2 alias names as-is so the rest of this repo stays valid.

## Spec file hierarchy

Specs are organized in six tiers so the AI can find what it needs in a predictable place.

```
specs/
├── foundations/        color, typography, spacing, motion
├── tokens/             master map of every CSS variable and when to use it
├── atoms/              button, input, icon, avatar, badge
├── molecules/          tabs, dropdown, modal, form, tooltip
├── organisms/          navigation, table, page header, content panel
└── patterns/           layout rules, form layout, three-column, error handling
```

Every component spec follows the same 8-section template: metadata, overview, anatomy, tokens used, props, states, code example, cross-references. The consistency is the point. When an AI builds a form it reads `patterns/form-layout.md` for spacing, `molecules/form.md` for structure, `atoms/input.md` for fields, and `tokens/tokens.md` for exact values. Every choice is a lookup, not a guess.

See [`specs/README.md`](./specs/README.md) for contributor guidance. This repo ships with worked examples for `foundations/{color,typography,spacing,motion}`, `tokens/tokens`, and `atoms/{button,input}`. Fork the pattern and add the specs for components your product actually ships.

## AI-agent-ready checklist

- [ ] `theme.json` is valid JSON, parseable without errors.
- [ ] `tokens.css` uses three-layer indirection (upstream tokens, project aliases, components reference aliases only).
- [ ] `DESIGN.md` follows the Google Labs open spec (or a documented equivalent structure).
- [ ] `specs/` directory contains foundation specs plus one file per component, each following the 8-section template.
- [ ] A token audit script runs in CI and reports (or fails) on any hardcoded value.
- [ ] Upstream design system dependencies are version-pinned, with a documented sync routine.
- [ ] Files live in the code repo, not locked inside Figma.
- [ ] Production code references the same tokens (no drift between spec and shipped).
- [ ] Agents cite `/04-design-system/DESIGN.md`, `/04-design-system/theme.json`, and `/04-design-system/tokens.css` when generating components.

Your tenth AI session should produce the same visual quality as your first. If it does not, the system is leaking somewhere in one of those eight checks.

Version: 1.1.0
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

## Recommended tools

- `theme.json` in the repo root of your project: de facto standard for AI coding tools (Cursor, v0, Lovable, Bolt read it automatically).
- [`tokens.css`](./tokens.css) with three-layer indirection: authoritative source of Layer 2 aliases your components consume.
- [Google Stitch](https://stitch.withgoogle.com/) (free, Google Labs) to generate or validate a `DESIGN.md` against the open spec.
- **FigmaLint** (free Figma plugin by TJ Pitre) to audit the Figma source of truth for hardcoded values, detached instances, missing interactive states, and token-binding gaps before they reach code. Pairs with `scripts/token-audit.sh` on the code side.
- Your own **token audit script**. This repo ships [`scripts/token-audit.sh`](../scripts/token-audit.sh) as a reference implementation. Wire it into CI so drift cannot merge.
- [Style Dictionary](https://amzn.github.io/style-dictionary/) (free) if you compile tokens to multiple platforms.
- [Storybook](https://storybook.js.org/) (free) if you maintain a component library.

Reference paths: `/04-design-system/DESIGN.md`, `/04-design-system/theme.json`, `/04-design-system/tokens.css`, `/04-design-system/specs/`, `/04-design-system/REFERENCES.md`, `/03-visual/VISUAL-BRAND.md`, `/scripts/token-audit.sh`.
