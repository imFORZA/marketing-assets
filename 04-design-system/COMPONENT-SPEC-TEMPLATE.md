# Component Spec Template

Copy this file when writing a new component spec under `specs/atoms/`, `specs/molecules/`, or `specs/organisms/`. Every component spec in this repo follows the same eight sections. The consistency is the point: when an AI agent builds a form it reads `patterns/form-layout.md` for spacing, `molecules/form.md` for structure, `atoms/input.md` for fields, and `tokens/tokens.md` for exact values. Every choice is a lookup, not a guess.

Rename the copy to `<component-name>.md`, fill every section, remove the template helper notes in italics, and open a pull request.

See `specs/atoms/button.md` and `specs/atoms/input.md` for worked examples that use this template.

---

<!-- markdownlint-disable-next-line MD025 -->
# Component Name

## 1. Metadata

| Field | Value |
| --- | --- |
| Tier | `atom` / `molecule` / `organism` |
| Status | `draft` / `beta` / `stable` / `deprecated` |
| Version | `1.0.0` |
| Last updated | `YYYY-MM-DD` |
| Owner | `[Name, Title]` |
| Related components | Links to related spec files |
| Source of truth | `specs/<tier>/<component>.md` |

## 2. Overview

### When to use

One to three sentences describing the job this component does. What user problem does it solve, in what context.

### When not to use

List the most common misuses. If another component is a better fit, name it and link the spec.

## 3. Anatomy

*Describe the parts of the component in a numbered list. If an image exists, reference it. Every visible element gets a name so conversations and code agree on terminology.*

1. **Container**: outer wrapper.
2. **Leading element**: optional icon, avatar, or indicator.
3. **Label / content**: primary text.
4. **Trailing element**: optional icon, badge, or affordance.
5. **Supporting text**: optional caption below the primary content.

Optional: include an ASCII sketch or a link to a Figma frame.

## 4. Tokens used

*List every token the component references. If it reads a token, it belongs here. The token audit script checks this section against the component's CSS implementation.*

| Property | Token | Notes |
| --- | --- | --- |
| Background | `--color-surface` | Default state |
| Background (hover) | `--color-surface-subtle` |  |
| Text | `--color-text` |  |
| Border | `--color-border` | 1 px |
| Padding (block) | `--space-300` |  |
| Padding (inline) | `--space-500` |  |
| Radius | `--radius-md` |  |
| Motion | `--duration-base` with `--easing-enter` | Hover transition |

## 5. Props / API

*For components with a programmatic API. For pure CSS components, describe modifier classes or data attributes.*

| Prop / class / attr | Type | Default | Description |
| --- | --- | --- | --- |
| `variant` | `primary` \| `secondary` \| `ghost` | `primary` | Visual variant |
| `size` | `sm` \| `md` \| `lg` | `md` | Sizing step |
| `disabled` | `boolean` | `false` | Blocks interaction, greys out |
| `leadingIcon` | `ReactNode` | none | Optional icon before label |

## 6. States

*Every interactive component defines every state. If a state is intentionally omitted (for example, a display-only atom has no hover), say so. Never leave the reader guessing.*

| State | Rules |
| --- | --- |
| Default | Describe baseline visual. |
| Hover | Which tokens change. |
| Active / pressed | Which tokens change. |
| Focus-visible | Always use `--focus-ring`. Never remove the focus ring. |
| Disabled | Token changes + non-interactive cursor. |
| Loading | Optional. Define if the component supports async action. |
| Error | Optional. Define if the component accepts user input. |
| Selected | Optional. Define if the component has a persistent selected state. |

## 7. Code example

```css
/* Component CSS references only Layer 2 aliases from tokens.css.
   Never raw hex, never raw pixels, never Layer 1 `--ds-*` tokens. */

.component-name {
  background-color: var(--color-surface);
  color:            var(--color-text);
  padding:          var(--space-300) var(--space-500);
  border:           1px solid var(--color-border);
  border-radius:    var(--radius-md);
  transition:       background-color var(--duration-base) var(--easing-enter);
}

.component-name:hover        { background-color: var(--color-surface-subtle); }
.component-name:focus-visible{ box-shadow: var(--focus-ring); outline: none; }
.component-name[disabled]    { opacity: 0.4; cursor: not-allowed; }
```

Optional: framework snippets (React, Vue, Web Component) that consume the same tokens.

## 8. Cross-references

- Related atoms / molecules / organisms, linked to their spec files.
- Patterns that consume this component (for example, `patterns/form-layout.md`).
- Upstream design system component this maps to, if any.
- Relevant foundation specs (`foundations/color.md`, `foundations/spacing.md`, etc.).

---

## Change log

| Date | Version | Change | Author |
| --- | --- | --- | --- |
| `YYYY-MM-DD` | `1.0.0` | Initial spec. | `[Name]` |
