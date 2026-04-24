# Foundation: Typography

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

1. **One scale, everywhere.** Every size used in production maps to a `--fs-*` token. No in-between values.
2. **Tokens are roles, not sizes.** `--fs-h1` is "page title", not "44 px". Re-theme a brand by changing the scale once; components do not change.
3. **Line heights travel with sizes.** Display faces get tight line heights. Body gets a relaxed 1.6. Code gets 1.55.
4. **Weight is the other axis of hierarchy.** Do not use size and weight changes to solve the same hierarchy problem. Pick one.
5. **Tracking stays subtle.** Display text goes slightly tight, body stays at 0, all-caps gets a small positive track.

## 3. Type scale (Layer 2 aliases)

| Alias | Role | Size | Line height | Weight | Tracking |
| --- | --- | --- | --- | --- | --- |
| `--fs-display-xl` | Hero | 72 px | 1.05 | 700 | -0.02em |
| `--fs-display-lg` | Secondary hero | 56 px | 1.10 | 700 | -0.02em |
| `--fs-h1` | Page title | 44 px | 1.15 | 700 | -0.01em |
| `--fs-h2` | Section title | 32 px | 1.20 | 600 | 0 |
| `--fs-h3` | Sub-section | 24 px | 1.30 | 600 | 0 |
| `--fs-h4` | Small heading | 20 px | 1.35 | 600 | 0 |
| `--fs-body-lg` | Lead paragraph | 18 px | 1.60 | 400 | 0 |
| `--fs-body` | Default body | 16 px | 1.60 | 400 | 0 |
| `--fs-body-sm` | Caption, meta | 14 px | 1.55 | 400 | 0.005em |
| `--fs-mono` | Code | 14 px | 1.55 | 400 | 0 |

## 4. Font stacks

Families are declared in `../../../03-visual/VISUAL-BRAND.md`. Reference the fallback stacks from there; do not redeclare here. The separation exists so a designer can swap typefaces once without chasing every component spec.

## 5. Usage rules

- Headings: use heading tokens in descending order. Do not skip levels for visual emphasis. Use weight or color for nuance.
- Body: default to `--fs-body`. Use `--fs-body-lg` only for lead paragraphs directly under a hero.
- Captions and meta: `--fs-body-sm` with `--color-text-muted`.
- Code: `--fs-mono` with `--color-text` on `--color-surface-muted`.
- Print: a parallel scale lives in `../../../03-visual/VISUAL-BRAND.md` under "Print scale". Do not mix print and screen tokens.

## 6. Cross-references

- Tokens: [`../tokens/tokens.md`](../tokens/tokens.md)
- Paired visual-brand section: `/03-visual/VISUAL-BRAND.md` typography
- Atoms that consume: [`../atoms/button.md`](../atoms/button.md), [`../atoms/input.md`](../atoms/input.md)

---

## Change log

| Date | Version | Change | Author |
| --- | --- | --- | --- |
| `2026-04-24` | `1.0.0` | Initial foundation spec. | `[Name]` |
