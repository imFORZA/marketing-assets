# Patterns

Cross-cutting rules that apply to many components. A pattern is not a component; it is a rule the components follow.

## Empty by design

This folder ships empty so you are not tempted to fork stale specs that may not match your UI. Add patterns your product actually uses. Patterns are shorter than component specs: two to four pages of Markdown is typical.

## Suggested patterns for SMB products

1. `form-layout.md` (spacing rhythm, label placement, error placement, required-field marking)
2. `empty-states.md` (icon + headline + description + primary action)
3. `loading-and-skeletons.md` (when to spin, when to skeleton, when to show nothing)
4. `error-handling.md` (inline validation vs page-level errors vs toasts)
5. `three-column-layout.md`
6. `confirmation-dialogs.md` (destructive vs non-destructive)
7. `notifications.md` (banner, toast, inline)

## Shape of a pattern spec

Patterns can reuse the same eight-section template as components. Sections 5 (Props) and 7 (Code) may be shorter or omitted. The useful sections are Overview, Tokens used, States, and Cross-references.

## Cross-references

- Foundations: [`../foundations/`](../foundations/)
- Atoms, molecules, organisms: [`../atoms/`](../atoms/), [`../molecules/`](../molecules/), [`../organisms/`](../organisms/)
