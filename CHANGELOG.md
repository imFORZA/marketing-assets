# Changelog

All notable changes to this repository are documented here. Format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/). This project uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html) at the repository level (the versions refer to the shape and quality of the starter pack, not any installed software).

## [Unreleased]

## [0.3.0] - 2026-04-24

### Added
- **Asset 4 depth.** Implemented the three-layer token pattern, spec-file hierarchy, and audit discipline documented in the companion article. Repo now gives forkers the scaffolding to actually execute what Asset 4 describes.
- `04-design-system/tokens.css`: three-layer CSS variable file (upstream tokens, project aliases, components reference aliases only). Commented examples for component usage and dark mode.
- `04-design-system/COMPONENT-SPEC-TEMPLATE.md`: the canonical 8-section template every component spec uses (metadata, overview, anatomy, tokens used, props, states, code example, cross-references).
- `04-design-system/REFERENCES.md`: curated list of AI-ready design systems to study (Atlassian, IBM Carbon, CMS, Nordhealth) plus primary sources (Pandya, Google Labs DESIGN.md, FigmaLint, Style Dictionary).
- `04-design-system/specs/` folder with six tiers:
  - `foundations/` populated with color, typography, spacing, motion.
  - `tokens/tokens.md` master alias map.
  - `atoms/` populated with worked specs for `button` and `input`.
  - `molecules/`, `organisms/`, `patterns/` scaffolded with contributor guidance READMEs.
- `AUDITS.md` at repo root documenting the "audit every asset" discipline. Includes per-asset audit matrix, cadence, and shipped tooling for all 10 folders.
- `scripts/token-audit.sh`: pure-bash token-discipline check. Flags raw hex, raw `oklch()`, raw pixel values in spacing/radius/font-size/gap, and direct Layer 1 (`--ds-*`) references from outside `tokens.css`. Report-only by default; `STRICT=1` makes it blocking.
- `.github/workflows/lint.yml`: added `token-audit` job (report-only) alongside the existing markdownlint, lychee, and validate jobs.

### Changed
- `04-design-system/DESIGN.md`: expanded to 1.1.0. Added sections on "The four things a design system needs to be AI-ready", "Three-layer token architecture", "Spec file hierarchy", plus a Recommended Tools section listing `tokens.css`, Google Stitch, FigmaLint, the shipped audit script, Style Dictionary, and Storybook. The existing token tables and component do/don't rules are preserved.
- `03-visual/VISUAL-BRAND.md`: added a Recommended Tools section that introduces FigmaLint as the Figma-side counterpart to the token audit script and cross-references `/04-design-system/REFERENCES.md`.
- `README.md`: added a "Marketing Assets as Code" section near the top borrowing Pandya's Infrastructure-as-Code framing, listing the four qualities every asset in the repo is designed to have (machine-readable, single source of truth, version-controlled, auditable), and pointing to `AUDITS.md`. Updated the folder tree entry for `04-design-system/` to show the new files.
- `10-brand-brain/BRAND-BRAIN.md`: bumped to 1.1.0. Added an operating-principle note calling out Marketing Assets as Code. Updated the folder tree to reflect the new `04-design-system/` files and `specs/` hierarchy.
- `scripts/validate.sh`: canonical file list grew from 30 to 42 files to include `AUDITS.md`, the new design-system artifacts, and every shipped spec.

### Notes
- `scripts/token-audit.sh` ships report-only so forks are not blocked before they have filled in component CSS. Flip `STRICT=1` locally or in CI when your token layer is authoritative.
- This release is aligned with the v2 update pack of the companion article ([blog post](https://www.imforza.com/blog/marketing-assets-for-ai/?utm_source=github&utm_medium=repo&utm_campaign=marketing-assets)) so the article and the repo now tell the same story with the same spine.

## [0.2.0] - 2026-04-22

### Added
- `CHANGELOG.md` at repo root.
- `scripts/validate.sh` smoke-test that verifies all canonical M10 files exist and flags unfilled placeholders (warn-only, since unfilled is the expected state for a fresh fork).
- `.github/ISSUE_TEMPLATE/` with bug, enhancement, and question templates aligned with the triage workflow.
- `.github/PULL_REQUEST_TEMPLATE.md` with a scope and quality checklist for contributions.
- `.github/workflows/lint.yml` running markdownlint, lychee broken-link check, and `scripts/validate.sh` on pull requests and pushes to main.
- `.markdownlint.json` and `.lycheeignore` configs tuned to the repo's editorial style.

### Changed
- All outbound `imforza.com` links in `README.md`, `CONTRIBUTING.md`, and `10-brand-brain/templates/email-nurture.md` now carry UTM parameters so referral traffic from forks and clones is attributable.
- `10-brand-brain/playbooks/linkedin.md`: reworded the "winners in 2026 wrote it down in 2025" example to an evergreen framing ("winners in the AI era") so the playbook does not age.
- `08-content/PROOF-CORPUS.md`: replaced "2025 to 2026" date range in a data citation with "two years" to keep the example evergreen.

## [0.1.0] - 2026-04-22

### Added
- Initial public release.
- All 10 asset folders populated with full, fork-ready templates: `01-icp/`, `02-voice/`, `03-visual/`, `04-design-system/`, `05-offer/`, `06-seo/`, `07-website/`, `08-content/`, `09-data/`, `10-brand-brain/`.
- `10-brand-brain/` subfolders: `templates/`, `playbooks/`, `campaigns/`, `prompts/`.
- Worked examples in `01-icp/examples/` and `02-voice/examples/`.
- `README.md` (pillar), `CONTRIBUTING.md`, `LICENSE` (MIT), `.gitignore`.

[Unreleased]: https://github.com/imFORZA/marketing-assets/compare/v0.3.0...HEAD
[0.3.0]: https://github.com/imFORZA/marketing-assets/compare/v0.2.0...v0.3.0
[0.2.0]: https://github.com/imFORZA/marketing-assets/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/imFORZA/marketing-assets/releases/tag/v0.1.0
