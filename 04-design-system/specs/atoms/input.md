# Input

## 1. Metadata

| Field | Value |
| --- | --- |
| Tier | `atom` |
| Status | `stable` |
| Version | `1.0.0` |
| Last updated | `2026-04-24` |
| Owner | `[Design owner, Title]` |
| Related components | [`button`](./button.md), `textarea`, `select`, `field-label`, `form-group` |
| Source of truth | `specs/atoms/input.md` |

## 2. Overview

### When to use

For single-line text entry: names, emails, search queries, numbers, URLs, short free-text answers.

### When not to use

- Use `textarea` for multi-line entry.
- Use `select` or `combobox` for picking from a known set.
- Use `date-picker` or a formatted input for dates, times, currencies, and masked formats.

## 3. Anatomy

1. **Container**: the field wrapper. Carries background, border, and focus ring.
2. **Leading element** (optional): a 16 px icon (search, email) or a prefix (`$`, `https://`).
3. **Input element**: native `<input>`. Carries the caret, placeholder, value.
4. **Trailing element** (optional): a clear button, a dropdown chevron, a validation icon, or a unit (`px`, `%`).
5. **Helper text** (optional): placed below the container. Used for formatting hints or error messages.

## 4. Tokens used

| Property | Token | Notes |
| --- | --- | --- |
| Background (default) | `--color-surface` |  |
| Border (default) | `--color-border` | 1 px |
| Border (focus) | `--color-brand` | Via `--focus-ring` |
| Border (error) | `--color-danger` | 1 px, plus helper text color match |
| Text | `--color-text` |  |
| Placeholder | `--color-text-muted` |  |
| Padding (block) | `--space-300` | 12 px |
| Padding (inline) | `--space-400` | 16 px |
| Radius | `--radius-md` |  |
| Focus ring | `--focus-ring` |  |
| Font size | `--fs-body` |  |

## 5. Props / API

| Prop | Type | Default | Description |
| --- | --- | --- | --- |
| `type` | `text` \| `email` \| `url` \| `tel` \| `number` \| `search` \| `password` | `text` | Native input type |
| `size` | `sm` \| `md` \| `lg` | `md` | Control size |
| `value` | `string` | `""` | Controlled value |
| `onChange` | `(event) => void` | none | Change handler |
| `placeholder` | `string` | `""` | Hint text, not a substitute for a label |
| `disabled` | `boolean` | `false` | Blocks interaction |
| `invalid` | `boolean` | `false` | Applies error styling + `aria-invalid` |
| `leadingIcon` | `ReactNode` | `null` | Icon before the input |
| `trailingIcon` | `ReactNode` | `null` | Icon or action after the input |
| `helperText` | `string` | `""` | Below the field. Becomes error text when `invalid`. |
| `aria-label` or `aria-labelledby` | `string` | none | Required if no visible `<label>` is associated |

## 6. States

| State | Rules |
| --- | --- |
| Default | Baseline per tokens above. |
| Hover | Border shifts to `--color-text-muted` for affordance. No other changes. |
| Focus-visible | Always `--focus-ring`. Border color does not change independently; the ring is the signal. |
| Filled | No visual change vs default. Value is displayed in `--color-text`. |
| Disabled | 40 percent opacity. `cursor: not-allowed`. Background shifts to `--color-surface-subtle`. |
| Invalid | Border becomes `--color-danger`. Helper text also `--color-danger`. `aria-invalid="true"`. |
| Read-only | Background `--color-surface-subtle`. Cursor `default`. No border color change. |

## 7. Code example

```css
.input {
  display:       block;
  width:         100%;
  padding:       var(--space-300) var(--space-400);
  background-color: var(--color-surface);
  color:         var(--color-text);
  border:        1px solid var(--color-border);
  border-radius: var(--radius-md);
  font-size:     var(--fs-body);
  line-height:   1.4;
  transition:    border-color var(--duration-base) var(--easing-enter),
                 box-shadow   var(--duration-fast) var(--easing-enter);
}

.input::placeholder       { color: var(--color-text-muted); }
.input:hover              { border-color: var(--color-text-muted); }
.input:focus-visible      { box-shadow: var(--focus-ring); border-color: transparent; outline: none; }
.input[disabled]          { opacity: 0.4; cursor: not-allowed; background-color: var(--color-surface-subtle); }
.input[aria-invalid="true"]{ border-color: var(--color-danger); }

.input--sm { padding: var(--space-200) var(--space-300); font-size: var(--fs-body-sm); }
.input--lg { padding: var(--space-400) var(--space-500); font-size: var(--fs-body-lg); }

.input-helper           { font-size: var(--fs-body-sm); color: var(--color-text-muted); margin-top: var(--space-200); }
.input-helper[data-error="true"] { color: var(--color-danger); }
```

## 8. Cross-references

- Foundations: [`foundations/color.md`](../foundations/color.md), [`foundations/spacing.md`](../foundations/spacing.md), [`foundations/typography.md`](../foundations/typography.md)
- Tokens: [`tokens/tokens.md`](../tokens/tokens.md)
- Siblings: [`button`](./button.md) (same control size scale, same radius, same focus ring)
- Consumed by (patterns): form layouts, search bars, filter panels.

---

## Change log

| Date | Version | Change | Author |
| --- | --- | --- | --- |
| `2026-04-24` | `1.0.0` | Initial spec. | `[Name]` |
