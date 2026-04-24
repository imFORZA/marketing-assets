# Foundation: Motion

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

1. **Motion is communication, not decoration.** Every animation earns its frames by confirming an action, showing a transition between states, or directing attention.
2. **Short by default.** 180 ms is the baseline. Overlays get 240 ms. Page transitions get 320 ms. Nothing else should feel slower.
3. **Respect `prefers-reduced-motion`.** When the user opts out, fades only. No slide, no parallax, no bounce.
4. **Enter and exit have different easing.** Entrances feel intentional (`cubic-bezier(0.4, 0, 0.2, 1)`). Exits feel released (`cubic-bezier(0.2, 0.8, 0.2, 1)`).
5. **One property at a time where possible.** Animating opacity + transform performs well. Animating height, width, or `filter` does not. Prefer layout-safe transitions.

## 3. Scale (Layer 2 aliases)

| Alias | Value | Typical use |
| --- | --- | --- |
| `--duration-fast` | 120 ms | Hover feedback, micro-interactions on text links |
| `--duration-base` | 180 ms | Button hover, input focus transitions |
| `--duration-medium` | 240 ms | Modal open, popover show, tooltip fade |
| `--duration-slow` | 320 ms | Page-level transitions, hero section reveal |

| Alias | Value | Typical use |
| --- | --- | --- |
| `--easing-enter` | `cubic-bezier(0.4, 0, 0.2, 1)` | Things arriving on screen |
| `--easing-exit` | `cubic-bezier(0.2, 0.8, 0.2, 1)` | Things leaving |

## 4. Usage rules

- Hover / state changes: `--duration-base` + `--easing-enter`.
- Overlays (modal, popover, tooltip): `--duration-medium`; enter on enter-easing, exit on exit-easing.
- Page transitions: `--duration-slow` with a fade. No slide unless the navigation is inherently lateral (carousel, step flow).
- Skeleton loaders: `--duration-slow` in a two-stop shimmer. Do not loop faster than that.
- `prefers-reduced-motion`: override any transform-based animation with opacity-only fades of the same duration.

## 5. Accessibility

Wrap any non-essential motion in:

```css
@media (prefers-reduced-motion: reduce) {
  .animated-thing { transition: none; animation: none; }
}
```

Essential motion (a loading spinner indicating progress) may remain, but slow it and use subtle easing so it does not disorient users with vestibular sensitivity.

## 6. Cross-references

- Tokens: [`../tokens/tokens.md`](../tokens/tokens.md)
- Paired visual-brand section: `/03-visual/VISUAL-BRAND.md` motion
- Atoms that consume: [`../atoms/button.md`](../atoms/button.md), [`../atoms/input.md`](../atoms/input.md)

---

## Change log

| Date | Version | Change | Author |
| --- | --- | --- | --- |
| `2026-04-24` | `1.0.0` | Initial foundation spec. | `[Name]` |
