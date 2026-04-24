# Specs

AI-legible component and foundation documentation. Every spec is a Markdown file an AI agent reads before writing or modifying UI code. If a spec does not exist for a component, the agent will guess. If it exists, the agent looks it up.

## Hierarchy

```
specs/
├── foundations/   color, typography, spacing, motion: the non-negotiables
├── tokens/        master map of every token and when to use it
├── atoms/         button, input, icon, avatar, badge
├── molecules/     tabs, dropdown, modal, form, tooltip
├── organisms/     navigation, table, page header, content panel
└── patterns/      layout rules, form layout, three-column, error handling
```

Tiers go from bottom up. A molecule composes atoms. An organism composes molecules. A pattern is a rule that applies across many components (for example, "every form uses 16 px vertical rhythm between fields and 24 px between groups").

## How an agent reads these

When the agent builds a form:

1. Read [`patterns/form-layout.md`](./patterns/) for spacing and grouping rules.
2. Read [`molecules/form.md`](./molecules/) for structure (title, fields, helper, actions).
3. Read [`atoms/input.md`](./atoms/input.md) for field implementation.
4. Read [`atoms/button.md`](./atoms/button.md) for submit/cancel buttons.
5. Read [`tokens/tokens.md`](./tokens/tokens.md) for exact token values when needed.
6. Read [`foundations/*.md`](./foundations/) when any rule above is ambiguous.

Every choice is a lookup, not a guess. That is the whole point.

## How to add a spec

1. Copy [`../COMPONENT-SPEC-TEMPLATE.md`](../COMPONENT-SPEC-TEMPLATE.md) into the right tier folder.
2. Rename to `<component-name>.md`.
3. Fill every section. If a section does not apply, state that explicitly ("This atom has no hover state because it is display-only").
4. Cross-reference from related specs (siblings, consumers, patterns).
5. Open a pull request. CI will check formatting and link validity.

## How to keep specs current

- Every PR that changes component behavior also changes the component's spec in the same commit.
- Foundation specs (`foundations/*`) change rarely. When they do, bump the version on every spec that references the changed foundation.
- If you adopt an upstream design system (Atlaskit, Carbon, MUI, Radix, shadcn), add a note in each atom's spec pointing to the upstream component and the last-synced version. Drift detection starts there.

## Current coverage

This repo ships with worked examples of the pattern:

- Atoms: `button`, `input`
- Foundations: `color`, `typography`, `spacing`, `motion`
- Tokens: `tokens`

Molecules, organisms, and patterns are scaffolded as empty folders. Fork this repo and add the specs that correspond to the components you actually ship. A small, accurate spec layer beats a comprehensive but stale one.
