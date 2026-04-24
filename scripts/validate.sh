#!/usr/bin/env bash
#
# validate.sh - M10 starter pack validator
#
# Run this from the repo root after you fork and start filling in your templates:
#
#     bash scripts/validate.sh
#
# It will:
#   1. PASS/FAIL the presence of every canonical M10 file (hard check).
#   2. WARN on unfilled placeholders like [Company Name], [YYYY-MM-DD], [Persona Name]
#      so you can see which templates still need your content.
#
# Exit codes:
#   0  All canonical files present. (Placeholders are warnings, not failures.)
#   1  One or more canonical files are missing.
#
# This script is intentionally plain bash with no external dependencies beyond
# grep, find, and sed, so it runs anywhere.

set -u

RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
BOLD="\033[1m"
RESET="\033[0m"

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root"

CANONICAL_FILES=(
  "README.md"
  "CONTRIBUTING.md"
  "LICENSE"
  "CHANGELOG.md"
  "AUDITS.md"
  "01-icp/ICP.md"
  "01-icp/VOICE-OF-CUSTOMER.md"
  "01-icp/BUYER-COMMITTEE.md"
  "02-voice/VOICE.md"
  "02-voice/TERMINOLOGY.md"
  "02-voice/COMPLIANCE.md"
  "03-visual/VISUAL-BRAND.md"
  "03-visual/IMAGERY.md"
  "03-visual/AI-IMAGE-PROMPTS.md"
  "04-design-system/DESIGN.md"
  "04-design-system/theme.json"
  "04-design-system/tokens.css"
  "04-design-system/COMPONENT-SPEC-TEMPLATE.md"
  "04-design-system/REFERENCES.md"
  "04-design-system/specs/README.md"
  "04-design-system/specs/foundations/color.md"
  "04-design-system/specs/foundations/typography.md"
  "04-design-system/specs/foundations/spacing.md"
  "04-design-system/specs/foundations/motion.md"
  "04-design-system/specs/tokens/tokens.md"
  "04-design-system/specs/atoms/button.md"
  "04-design-system/specs/atoms/input.md"
  "05-offer/OFFER.md"
  "05-offer/COMPETITORS.md"
  "05-offer/WIN-LOSS.md"
  "06-seo/KEYWORDS.md"
  "06-seo/TOPIC-CLUSTERS.md"
  "06-seo/GEO-AEO.md"
  "07-website/SITE-MAP.md"
  "07-website/SCHEMA.md"
  "08-content/CONTENT-LIBRARY.md"
  "08-content/EDITORIAL-CALENDAR.md"
  "08-content/PROOF-CORPUS.md"
  "09-data/ANALYTICS.md"
  "09-data/TRACKING-PLAN.md"
  "09-data/TOP-PERFORMERS.md"
  "10-brand-brain/BRAND-BRAIN.md"
)

PLACEHOLDER_PATTERNS=(
  '\[Company Name\]'
  '\[Persona Name\]'
  '\[Offer Name\]'
  '\[YYYY-MM-DD\]'
  '\[Name, Title\]'
)

echo -e "${BOLD}M10 starter pack validator${RESET}"
echo ""

echo -e "${BOLD}1. Canonical file presence${RESET}"
missing=0
for f in "${CANONICAL_FILES[@]}"; do
  if [[ -f "$f" ]]; then
    echo -e "  ${GREEN}ok${RESET}    $f"
  else
    echo -e "  ${RED}MISSING${RESET} $f"
    missing=$((missing + 1))
  fi
done
echo ""

echo -e "${BOLD}2. Unfilled placeholders (warnings)${RESET}"
echo "   If you just forked this repo, expect many. As you fill in templates, this list should shrink."
echo ""

total_placeholders=0
for pattern in "${PLACEHOLDER_PATTERNS[@]}"; do
  count=$(grep -r -E --include='*.md' --include='*.json' "$pattern" . 2>/dev/null | grep -v '^\./\.git/' | wc -l | tr -d ' ')
  total_placeholders=$((total_placeholders + count))
  if [[ "$count" -gt 0 ]]; then
    printf "  ${YELLOW}%4d${RESET}  occurrences of  ${BOLD}%s${RESET}\n" "$count" "$pattern"
  fi
done

if [[ "$total_placeholders" -eq 0 ]]; then
  echo -e "  ${GREEN}No placeholder patterns found. Your foundation looks fully filled in.${RESET}"
fi
echo ""

echo -e "${BOLD}Summary${RESET}"
if [[ "$missing" -eq 0 ]]; then
  echo -e "  ${GREEN}All ${#CANONICAL_FILES[@]} canonical files present.${RESET}"
else
  echo -e "  ${RED}${missing} canonical file(s) missing. Fix before shipping.${RESET}"
fi
echo -e "  ${YELLOW}${total_placeholders} placeholder occurrence(s) remaining across the repo.${RESET}"
echo ""

if [[ "$missing" -gt 0 ]]; then
  exit 1
fi
exit 0
