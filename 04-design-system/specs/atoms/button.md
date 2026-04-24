# Button

## 1. Metadata

| Field | Value |
| --- | --- |
| Tier | `atom` |
| Status | `stable` |
| Version | `1.0.0` |
| Last updated | `2026-04-24` |
| Owner | `[Design owner, Title]` |
| Related components | [`input`](./input.md), `link`, `icon-button`, `badge` |
| Source of truth | `specs/atoms/button.md` |

## 2. Overview

### When to use

To let a user start or confirm an action. Buttons represent intent: submitting a form, starting a checkout, opening a dialog, advancing a step. Use the **primary** variant at most once per screen to signal the single most important action.

### When not to use

- Use a `link` when the destination is another page or URL rather than an action.
- Use an `icon-button` when the control is icon-only (no text label).
- Use `tabs` or `toggle` for persistent state selection.
- Use a `menu` when more than five related actions are offered from one point.

## 3. Anatomy

1. **Container**: the clickable surface. Carries background, border, and focus ring.
2. **Leading icon** (optional): a 16 px icon placed before the label, separated by `--space-200`.
3. **Label**: a verb phrase. Sentence case, no trailing punctuation. ("Save changes", not "Save.")
4. **Trailing icon** (optional): a 16 px icon placed after the label. Reserved for arrows, external-link, or chevrons that indicate direction.
5. **Loading spinner** (optional): replaces the leading icon when the button is in a loading state.

## 4. Tokens used

| Property | Token | Notes |
| --- | --- | --- |
| Background (primary default) | `--color-brand` |  |
| Background (primary hover) | `--color-brand-hover` |  |
| Text (primary) | `--color-text-on-brand` |  |
| Background (secondary default) | `--color-brand-secondary` |  |
| Background (secondary hover) | `--color-brand-secondary-hover` |  |
| Background (ghost default) | `transparent` | Border only |
| Border (ghost) | `--color-border` | 1 px |
| Text (ghost) | `--color-text-link` |  |
| Padding (block) | `--space-300` | 12 px top/bottom for `md` |
| Padding (inline) | `--space-500` | 20 px left/right for `md` |
| Radius | `--radius-md` |  |
| Focus ring | `--focus-ring` |  |
| Motion | `--duration-base` + `--easing-enter` | Transition background |
| Font size | `--fs-body` | Weight 600 |

Size variants adjust padding and font size only; all other tokens stay identical.

## 5. Props / API

| Prop | Type | Default | Description |
| --- | --- | --- | --- |
| `variant` | `primary` \| `secondary` \| `ghost` | `primary` | Visual emphasis |
| `size` | `sm` \| `md` \| `lg` | `md` | Control size |
| `type` | `button` \| `submit` \| `reset` | `button` | HTML form semantics |
| `disabled` | `boolean` | `false` | Disables interaction |
| `loading` | `boolean` | `false` | Shows spinner, disables click, preserves width |
| `leadingIcon` | `ReactNode` | `null` | Icon before label |
| `trailingIcon` | `ReactNode` | `null` | Icon after label |
| `fullWidth` | `boolean` | `false` | Stretches to container width |
| `aria-label` | `string` | derived from label | Required if label is visual-only |

## 6. States

| State | Rules |
| --- | --- |
| Default | Baseline per variant (see tokens table). |
| Hover | Background swaps to the `*-hover` token. 180 ms transition. |
| Active / pressed | 5 percent darker than hover. Optional: 1 px inset shadow for press feedback. |
| Focus-visible | Always `--focus-ring`. Never remove. Visible on keyboard focus only. |
| Disabled | 40 percent opacity. `cursor: not-allowed`. Hover rules do not apply. |
| Loading | Label remains readable (for width stability). Spinner replaces leading icon. `aria-busy="true"` on the button. Click is ignored. |

## 7. Code example

```css
/* All component CSS references Layer 2 aliases only. See tokens.css. */

.button {
  display:            inline-flex;
  align-items:        center;
  gap:                var(--space-200);
  padding:            var(--space-300) var(--space-500);
  border:             1px solid transparent;
  border-radius:      var(--radius-md);
  font-size:          var(--fs-body);
  font-weight:        600;
  line-height:        1;
  cursor:             pointer;
  transition:         background-color var(--duration-base) var(--easing-enter),
                      color            var(--duration-base) var(--easing-enter),
                      box-shadow       var(--duration-fast) var(--easing-enter);
}

/* Variants */
.button--primary   { background-color: var(--color-brand);           color: var(--color-text-on-brand); }
.button--primary:hover   { background-color: var(--color-brand-hover); }
.button--secondary { background-color: var(--color-brand-secondary); color: var(--color-text-on-brand); }
.button--secondary:hover { background-color: var(--color-brand-secondary-hover); }
.button--ghost     { background-color: transparent; color: var(--color-text-link); border-color: var(--color-border); }
.button--ghost:hover     { background-color: var(--color-surface-subtle); }

/* Sizes: padding + font-size only */
.button--sm { padding: var(--space-200) var(--space-400); font-size: var(--fs-body-sm); }
.button--lg { padding: var(--space-400) var(--space-600); font-size: var(--fs-body-lg); }

/* States */
.button:focus-visible { box-shadow: var(--focus-ring); outline: none; }
.button[disabled]     { opacity: 0.4; cursor: not-allowed; pointer-events: none; }
.button[aria-busy="true"] { cursor: progress; }
```

### React reference

```tsx
export function Button({
  variant = "primary",
  size = "md",
  loading = false,
  disabled = false,
  leadingIcon,
  trailingIcon,
  children,
  ...rest
}: ButtonProps) {
  return (
    <button
      className={`button button--${variant} button--${size}`}
      aria-busy={loading || undefined}
      disabled={disabled || loading}
      {...rest}
    >
      {loading ? <Spinner size={16} aria-hidden /> : leadingIcon}
      <span>{children}</span>
      {!loading && trailingIcon}
    </button>
  );
}
```

## 8. Cross-references

- Foundations: [`foundations/color.md`](../foundations/color.md), [`foundations/spacing.md`](../foundations/spacing.md), [`foundations/typography.md`](../foundations/typography.md), [`foundations/motion.md`](../foundations/motion.md)
- Tokens: [`tokens/tokens.md`](../tokens/tokens.md)
- Siblings: [`input`](./input.md)
- Consumed by (patterns): form layouts, modal footers, hero CTAs.

---

## Change log

| Date | Version | Change | Author |
| --- | --- | --- | --- |
| `2026-04-24` | `1.0.0` | Initial spec. | `[Name]` |
