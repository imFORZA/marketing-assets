# Foundation: Spacing

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

1. **4 px base unit.** Every layout value is a multiple of 4 px. No 5 px, 7 px, 13 px, or 18 px spacings.
2. **Token scale, not arbitrary steps.** Compose layouts from the fixed step set. If a situation needs a value between two tokens, stop and ask whether the hierarchy is wrong.
3. **Rhythm is the product of spacing.** Consistent vertical rhythm beats pixel-perfect alignment of every element.
4. **Container padding > element margins.** Containers own their inner padding. Children do not set outer margins to fight the container.

## 3. Scale (Layer 2 aliases)

| Alias | Value | Typical use |
| --- | --- | --- |
| `--space-100` | 4 px | Icon-to-text inside a chip or button |
| `--space-200` | 8 px | Inline gaps, tight groupings |
| `--space-300` | 12 px | Button inner vertical padding, small card padding |
| `--space-400` | 16 px | Standard vertical rhythm between related items |
| `--space-500` | 20 px | Button inner horizontal padding |
| `--space-600` | 24 px | Card padding, section internal padding |
| `--space-800` | 32 px | Space between field groups in a form |
| `--space-1200` | 48 px | Space between sections on a page |
| `--space-1600` | 64 px | Space between major page regions |

Names encode scale (100, 200, 300…), not raw pixel values, so a brand refresh can resize the whole scale without renaming tokens.

## 4. Usage rules

- **Forms:** `--space-400` between stacked fields, `--space-800` between field groups, `--space-600` between the last field and the submit row.
- **Cards:** interior padding `--space-600`. Gap between cards `--space-600` in tight grids, `--space-800` in showcase layouts.
- **Sections:** internal padding `--space-1200` top/bottom on desktop, `--space-800` on mobile.
- **Text blocks:** gap between paragraphs `--space-400`. Gap between heading and following paragraph `--space-200`.

## 5. Breakpoints

Defined here because breakpoints often drive spacing adjustments at different sizes.

| Token | Min width |
| --- | --- |
| `--bp-sm` | 640 px |
| `--bp-md` | 768 px |
| `--bp-lg` | 1024 px |
| `--bp-xl` | 1280 px |
| `--bp-2xl` | 1536 px |

Rule: reduce section padding by one step (`--space-1200` → `--space-800`) below `--bp-md`.

## 6. Cross-references

- Tokens: [`../tokens/tokens.md`](../tokens/tokens.md)
- Paired visual-brand section: `/03-visual/VISUAL-BRAND.md` spacing
- Consumed by most atoms and every pattern.

---

## Change log

| Date | Version | Change | Author |
| --- | --- | --- | --- |
| `2026-04-24` | `1.0.0` | Initial foundation spec. | `[Name]` |
