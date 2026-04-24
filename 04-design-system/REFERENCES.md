# References: AI-Ready Design Systems

A curated reading list of design systems and resources that model the AI-ready pattern described in `DESIGN.md` and the companion article. Fork the structure, not the visuals: your tokens and voice stay yours. The skeleton these systems use is what makes them AI-legible.

If an SMB can only read four design systems before building their own, these are the four.

---

## The four exemplars to study

### Atlassian Design System

- Site: [atlassian.design](https://atlassian.design/)
- Why it matters: the system Hardik Pandya ran his teardown against in [Expose your design system to LLMs](https://hvpandya.com/llm-design-systems). The entire three-layer token pattern in this repo is informed by Atlaskit's architecture.
- What to copy: the spec-file tier hierarchy, the audit-script discipline, the bootstrap prompt.

### IBM Carbon Design System

- Site: [carbondesignsystem.com](https://carbondesignsystem.com/)
- Why it matters: mature three-tier token architecture with heavy enterprise adoption. Documentation per component is deep, structured, and consistent.
- What to copy: the consistency of component documentation across hundreds of components. Carbon's docs read the same way whether you are on `Button` or `Accordion`. That is the shape you want your `specs/` folder to converge on.

### CMS Design System

- Site: [design.cms.gov](https://design.cms.gov/)
- Why it matters: a rare public-sector example. The Centers for Medicare & Medicaid Services serves users in every demographic at every literacy level, so the system's accessibility documentation is unusually rigorous.
- What to copy: accessibility specs, state documentation, plain-language examples. Useful if your users are non-technical.

### Nordhealth Design System

- Site: [nordhealth.design](https://nordhealth.design/)
- Why it matters: compact and well-structured, easy to read end-to-end in an afternoon. Good reference for SMBs who find Atlassian and Carbon too large to mentally model.
- What to copy: the scope of coverage. Nordhealth proves you do not need 400 components to have a real design system.

---

## Primary source material

### Hardik Pandya, "Expose your design system to LLMs"

- URL: [hvpandya.com/llm-design-systems](https://hvpandya.com/llm-design-systems)
- The deepest public treatment of what "AI-ready design system" actually means in code. Covers the three-layer token pattern, the spec-file tier hierarchy, the audit-script workflow, the bootstrap prompt, and drift detection for upstream design systems. The entire design-system depth of this repo is informed by this piece.

### Google Labs, `DESIGN.md` open specification

- Announcement: [Stitch design tool introduces DESIGN.md](https://blog.google/innovation-and-ai/models-and-research/google-labs/stitch-design-md/)
- The emerging open standard for machine-readable design context. This repo's `DESIGN.md` is compatible in spirit. Adopt stricter Stitch-spec sections as the spec stabilizes for cross-platform portability.

### FigmaLint, by TJ Pitre

- Plugin: search "FigmaLint" on [figma.com/community](https://www.figma.com/community). (Official URL TK; confirm before sharing externally.)
- Free Figma plugin that audits a Figma file for hardcoded values, detached instances, missing interactive states, and token-binding gaps. The Figma-side counterpart to the token audit script in `scripts/token-audit.sh`.

### Style Dictionary

- Site: [amzn.github.io/style-dictionary](https://amzn.github.io/style-dictionary/)
- Build system that transforms `tokens.json` into platform-specific outputs (CSS, iOS, Android, Flutter). Useful if you ship to more than one platform from a single token source.

---

## Related reading

- [Infrastructure as Code (Wikipedia)](https://en.wikipedia.org/wiki/Infrastructure_as_code): the original pattern this repo extends to marketing assets. Useful for adopters who have never seen the pattern in its native domain.
- [Design Tokens Community Group (W3C)](https://www.designtokens.org/): the standards body working on a cross-tool token format. Track this if you want your tokens portable beyond one design tool.
- [Storybook](https://storybook.js.org/): component development environment. Optional but helpful if you maintain more than a handful of components.

---

## Companion article

The full narrative rationale for this repo lives in the pillar guide: [The 10 Marketing Assets Every Small Business Needs to Future-Proof Their Marketing in the AI Era](https://www.imforza.com/blog/marketing-assets-for-ai/?utm_source=github&utm_medium=repo&utm_campaign=marketing-assets). Asset 4 in that article expands on the design-system depth covered in this folder.

---

Last updated: 2026-04-24
