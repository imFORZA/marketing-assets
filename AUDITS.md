# Audits

Every asset in this repo is designed to be auditable. Without audits, assets rot quietly and your AI agents keep reading files that used to be true. With audits, the system tells you exactly which file stopped being true.

This document lists the audit per asset, the cadence it should run on, and the shipped tooling (where any exists).

The pattern is the same shape across all 10 assets:

> A **machine-readable asset**, a **set of rules the asset implies**, and a **scheduled check that fails loudly when reality and asset disagree.**

---

## The audit matrix

| Asset | What to audit | Cadence | Shipped tooling |
| --- | --- | --- | --- |
| **01 ICP** | Persona fields have current numbers (company size, AOV, tools used). VOC quotes <18 months old. | Quarterly | `scripts/validate.sh` (placeholder check) |
| **02 Voice & Terminology** | No banned words in drafts. `TERMINOLOGY.md` exceptions up to date. Compliance rules match current regulatory posture. | On every content PR | None yet. Roadmap: `scripts/voice-audit.sh` lex-check over `02-voice/TERMINOLOGY.md`. |
| **03 Visual Brand** | Figma source has no hardcoded values, no detached instances, no missing states. Color, type, spacing tables in `VISUAL-BRAND.md` match `theme.json`. | Monthly | **FigmaLint** (plugin). See [`04-design-system/REFERENCES.md`](./04-design-system/REFERENCES.md). |
| **04 Design System** | No hardcoded hex / px in component CSS. Components reference Layer 2 aliases only. `theme.json` and `tokens.css` agree. Upstream design system pinned. | Every PR (CI) | [`scripts/token-audit.sh`](./scripts/token-audit.sh) (report-only; flip to blocking when your tokens are authoritative). |
| **05 Offer & Competitive** | Competitor entries current. Pricing pages in `COMPETITORS.md` match what is live on their sites. Win/loss library has entries from the last 90 days. | Quarterly | None yet. Roadmap: diff check against competitor URLs. |
| **06 SEO** | Target keywords still in the brief. Cluster maps up to date. Orphan pages flagged. GEO/AEO citations confirmed by a weekly re-query. | Monthly | None yet. Roadmap: `scripts/orphan-check.sh` over `06-seo/TOPIC-CLUSTERS.md`. |
| **07 Website** | Schema validates on every canonical URL. Rich Results Test passes. Sitemap matches `07-website/SITE-MAP.md`. 301 chain audit. | Monthly | Google Rich Results Test (manual / scheduled). |
| **08 Content** | Evergreen URLs not updated in 12 months flagged. Duplicate topic clusters flagged. Proof corpus citations still resolve. | Quarterly | None yet. Roadmap: freshness scanner over `08-content/CONTENT-LIBRARY.md`. |
| **09 Data** | Tracking plan events still fire. `TOP-PERFORMERS.md` reflects last 90 days. Dashboards not broken. | Monthly | None yet. Platform-specific (GA4, Looker Studio). |
| **10 Brand Brain** | Pointers in `BRAND-BRAIN.md` resolve to files that exist. Version pins on upstream assets still current. | Every release | `scripts/validate.sh` (canonical-file presence check). |

Cadences are targets. Pick the ones you can actually run, then automate the rest.

---

## Why each audit is shaped this way

### Voice & Terminology (Asset 2)

A style guide that lives in a PDF tells a writer what the brand sounds like. A `TERMINOLOGY.md` paired with a lint step stops the word "synergy" from leaving drafts. Writer.com and Grammarly Business do this commercially. A shell `grep` over your own terminology file does it for free.

### Design System (Asset 4)

A `tokens.css` file with 230 named colors does nothing if a developer can still write `color: #2563EB` in a component and ship it. The fix is an audit script in CI that flags (or fails) the build on any hardcoded value. See `scripts/token-audit.sh` for the reference implementation.

### Offer & Competitive (Asset 5)

Competitor pricing pages change quietly. If a competitor ships a new tier and your battle card still shows the old three-tier table, every sales call using that card is misinformed. A quarterly diff check on competitor entry URLs (or a set of `curl | diff` calls stored in `scripts/competitor-diff.sh`) surfaces drift before a rep finds out on a call.

### SEO & Keywords (Asset 6)

Pages inside a keyword cluster need internal links pointing at them. Orphans are invisible to both Google and generative search. A monthly crawl of pages in your cluster map versus actual link graph surfaces which ones need work.

### Website & Schema (Asset 7)

Schema breaks silently when CMS templates change. Rich Results Test on every canonical URL, scheduled monthly, catches silent breaks within 30 days instead of within two quarters when organic traffic is down and nobody knows why.

### Content Library (Asset 8)

Evergreen content is only evergreen if you maintain it. A freshness audit flags any evergreen URL not updated in 12 months and any duplicate topic cluster. Run it before planning next quarter's calendar so you refresh instead of writing net-new on a topic you already rank for.

---

## Shipped audit tools in this repo

### `scripts/validate.sh`: canonical file presence

Hard-checks that every file listed in the M10 tree exists, and flags unfilled placeholders (warning only). Run locally before you open a PR; runs in CI on every push.

```bash
bash scripts/validate.sh
```

### `scripts/token-audit.sh`: token discipline (added in v0.3)

Scans CSS files in the repo (excluding `tokens.css` itself) for:

1. Raw hex colors (`#rrggbb` or `#rgb`)
2. Raw `oklch(...)` color literals
3. Raw pixel values in `padding`, `margin`, `border-radius`, `font-size`, `gap`
4. Direct references to Layer 1 (`--ds-*`) tokens from outside `tokens.css`

Prints file, line, violation, and suggested Layer 2 alias for each finding. Exits 0 by default (report-only) so forks that have not yet adopted the token pattern are not blocked. Flip the `STRICT=1` environment variable when you are ready to fail CI on violations.

```bash
bash scripts/token-audit.sh           # report-only
STRICT=1 bash scripts/token-audit.sh  # blocking
```

---

## How to add a new audit

1. Write the audit as a shell script under `scripts/<asset>-audit.sh`.
2. Keep it in pure bash with no dependencies beyond `grep`, `find`, `sed`, and standard POSIX utilities. The goal is "runs in any CI, any laptop, any fork".
3. Print file, line, violation, and suggestion for every finding.
4. Default to report-only (`exit 0`) so forks can adopt progressively. Gate strict mode behind an env var.
5. Wire it into `.github/workflows/lint.yml` as a separate job so one failing audit does not hide another.
6. Add a row to the audit matrix at the top of this file.

The discipline matters more than any single script. Once the pattern is in place across all 10 assets, AI agents read assets that stay true over time, and forkers inherit a working example of how the category should be run.
