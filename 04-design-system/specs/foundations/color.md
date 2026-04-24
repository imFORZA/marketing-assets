# Foundation: Color

## 1. Metadata

| Field | Value |
| --- | --- |
| Tier | `foundation` |
| Status | `stable` |
| Version | `1.0.0` |
| Last updated | `2026-04-24` |
| Owner | `[Design owner, Title]` |
| Paired files | `../../tokens.css`, `../../theme.json`, `../../../03-visual/VISUAL-BRAND.md` |

## 2. Principles

1. **Every color has a role.** Brand, neutral, semantic, or surface. Never decorative.
2. **Tokens, not values.** Components reference Layer 2 aliases from `tokens.css`. Never raw hex. Never raw OKLCH.
3. **Semantic colors are reserved for status.** `--color-success`, `--color-warning`, `--color-danger`, `--color-info`. Do not use `--color-danger` for a decorative red.
4. **Neutrals carry the page.** 80 percent of any layout is neutrals.
5. **Contrast is non-negotiable.** Every text-on-background combination passes WCAG 2.2 AA. 4.5:1 for body, 3:1 for large text (18 pt regular / 14 pt bold and up).
6. **Never meaning by color alone.** Pair color with an icon or a label. Accessibility and AEO crawlers both benefit.

## 3. Role map (Layer 2 aliases)

| Alias | Role |
| --- | --- |
| `--color-surface` | Default page / card background |
| `--color-surface-subtle` | Secondary surface (hover fill, muted zone) |
| `--color-surface-muted` | Tertiary surface (section breaks, code blocks) |
| `--color-border` | 1 px dividers and input borders |
| `--color-divider` | Horizontal rules |
| `--color-text` | Body text |
| `--color-text-heading` | Headings |
| `--color-text-muted` | Captions, meta, placeholders |
| `--color-text-on-brand` | Text on brand-colored surfaces |
| `--color-text-link` | Inline links in body copy |
| `--color-brand` | Primary CTAs, key navigation states |
| `--color-brand-hover` | Primary hover / active |
| `--color-brand-secondary` | Secondary actions |
| `--color-brand-secondary-hover` | Secondary hover |
| `--color-accent-1` | Highlight, tag, callout (first accent) |
| `--color-accent-2` | Chart secondary, second accent |
| `--color-success` / `--color-warning` / `--color-danger` / `--color-info` | Status only |

## 4. Usage rules

- Primary brand on hero elements and the single most important CTA per screen.
- Secondary brand on secondary CTAs, tags, and highlight moments. Never stack secondary against primary at full saturation.
- Accent colors on decorative treatments and charts. Rotate for data series.
- Semantic colors only in alerts, validation, and status indicators.
- Link color in body copy: `--color-text-link`. Underline on hover; always underline when the link sits inside a flowing paragraph.

## 5. Dark mode

Dark mode is implemented by reassigning Layer 2 aliases inside a media query or a `data-theme` attribute. Components do not change. See the commented block at the bottom of `tokens.css` for the pattern.

If you ship light mode only, declare that fact here so agents do not assume dark variants exist:

> This project currently supports light mode only. Dark-mode aliases are reserved for a future release.

## 6. Cross-references

- Tokens: [`../tokens/tokens.md`](../tokens/tokens.md)
- Paired visual-brand section: `/03-visual/VISUAL-BRAND.md` color system
- Atoms that consume: [`../atoms/button.md`](../atoms/button.md), [`../atoms/input.md`](../atoms/input.md)

---

## Change log

| Date | Version | Change | Author |
| --- | --- | --- | --- |
| `2026-04-24` | `1.0.0` | Initial foundation spec. | `[Name]` |
