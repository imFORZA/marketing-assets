# Tokens

## 1. Metadata

| Field | Value |
| --- | --- |
| Tier | `foundation` |
| Status | `stable` |
| Version | `1.0.0` |
| Last updated | `2026-04-24` |
| Owner | `[Design owner, Title]` |
| Paired files | `../../tokens.css` (authoritative), `../../theme.json`, `../../DESIGN.md` |

## 2. Purpose

This file is the master map of every Layer 2 token in the system and when to use it. `tokens.css` is the machine-readable source of truth. This file is the human-readable index an AI agent or a new contributor consults to understand which alias applies to which property.

If a token exists in `tokens.css` but not in this map, add it here. If a token exists here but not in `tokens.css`, delete the entry. The two files must agree.

## 3. Layer model (recap)

```
Layer 1  var(--ds-*, fallback)        upstream / raw
Layer 2  var(--color-*, --space-*, …) aliases (this file documents these)
Layer 3  component CSS                references Layer 2 aliases only
```

See [`../../DESIGN.md`](../../DESIGN.md) section "Three-layer token architecture" for the full rationale. The audit script at `scripts/token-audit.sh` enforces the rule that component code never touches Layer 1 or raw values.

## 4. Color tokens

### Surfaces

| Alias | Use on |
| --- | --- |
| `--color-surface` | Default page background, default card background |
| `--color-surface-subtle` | Ghost-button hover, muted zones, disabled inputs |
| `--color-surface-muted` | Section bands, code blocks, inline code background |
| `--color-border` | Input borders, card borders, 1 px dividers |
| `--color-divider` | Horizontal rules, table row separators |

### Text

| Alias | Use on |
| --- | --- |
| `--color-text` | Default body copy |
| `--color-text-heading` | Headings (h1 through h4) |
| `--color-text-muted` | Captions, meta, placeholder text, helper text |
| `--color-text-on-brand` | Label text on brand-colored surfaces |
| `--color-text-link` | Inline links inside body copy |

### Brand + accent

| Alias | Use on |
| --- | --- |
| `--color-brand` | Primary CTA background, active nav |
| `--color-brand-hover` | Primary CTA hover / active |
| `--color-brand-secondary` | Secondary CTA background |
| `--color-brand-secondary-hover` | Secondary CTA hover |
| `--color-accent-1` | Decorative highlight, tag fill |
| `--color-accent-2` | Chart secondary series |

### Semantic (status only)

| Alias | Use on |
| --- | --- |
| `--color-success` | Success alerts, confirmed states |
| `--color-warning` | Warning alerts, pending states |
| `--color-danger` | Error borders, destructive buttons, invalid fields |
| `--color-info` | Informational banners |

## 5. Spacing tokens

| Alias | Value | Use |
| --- | --- | --- |
| `--space-100` | 4 px | Icon-to-text inside a chip |
| `--space-200` | 8 px | Inline gaps |
| `--space-300` | 12 px | Button vertical padding (md) |
| `--space-400` | 16 px | Standard vertical rhythm |
| `--space-500` | 20 px | Button horizontal padding (md) |
| `--space-600` | 24 px | Card padding |
| `--space-800` | 32 px | Form field groups |
| `--space-1200` | 48 px | Section padding |
| `--space-1600` | 64 px | Major page region gap |

## 6. Radius tokens

| Alias | Value | Use |
| --- | --- | --- |
| `--radius-sm` | 4 px | Tags, small inputs |
| `--radius-md` | 8 px | Buttons, inputs, cards |
| `--radius-lg` | 16 px | Modals, feature cards |
| `--radius-xl` | 24 px | Hero blocks |
| `--radius-pill` | 9999 px | Pills, badges, avatars |

## 7. Shadow tokens

| Alias | Use |
| --- | --- |
| `--shadow-sm` | Resting cards |
| `--shadow-md` | Hovered cards, dropdowns |
| `--shadow-lg` | Modals |
| `--shadow-xl` | Full-screen overlays |

## 8. Typography tokens

See [`../foundations/typography.md`](../foundations/typography.md) for the full scale. Aliases: `--fs-display-xl`, `--fs-display-lg`, `--fs-h1` through `--fs-h4`, `--fs-body-lg`, `--fs-body`, `--fs-body-sm`, `--fs-mono`.

## 9. Motion tokens

See [`../foundations/motion.md`](../foundations/motion.md). Aliases: `--duration-fast`, `--duration-base`, `--duration-medium`, `--duration-slow`, `--easing-enter`, `--easing-exit`.

## 10. Focus token

| Alias | Value | Use |
| --- | --- | --- |
| `--focus-ring` | `0 0 0 2px var(--color-surface), 0 0 0 4px var(--color-brand)` | Every focusable element. Never remove. |

## 11. Rules the audit script enforces

1. Component CSS must not contain raw `#xxxxxx` or `oklch(...)` values. Use a `--color-*` alias.
2. Component CSS must not contain raw pixel values for spacing, radius, or font-size. Use a `--space-*`, `--radius-*`, or `--fs-*` alias.
3. Component CSS must not reference Layer 1 tokens (`--ds-*`) directly. Always go through Layer 2.
4. Every interactive element uses `--focus-ring` for focus-visible.

Run `bash scripts/token-audit.sh` to check locally. CI runs the same script on every PR.

---

## Change log

| Date | Version | Change | Author |
| --- | --- | --- | --- |
| `2026-04-24` | `1.0.0` | Initial token map. | `[Name]` |
