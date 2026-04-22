# Changelog

All notable changes to this repository are documented here. Format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/). This project uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html) at the repository level (the versions refer to the shape and quality of the starter pack, not any installed software).

## [Unreleased]

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

[Unreleased]: https://github.com/imFORZA/marketing-assets/compare/v0.2.0...HEAD
[0.2.0]: https://github.com/imFORZA/marketing-assets/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/imFORZA/marketing-assets/releases/tag/v0.1.0
