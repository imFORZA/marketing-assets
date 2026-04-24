#!/usr/bin/env bash
#
# token-audit.sh - M10 design-system token discipline check
#
# Scans CSS files in the repo for patterns that violate the three-layer
# token architecture documented in 04-design-system/DESIGN.md:
#
#   1. Raw hex colors (#rrggbb, #rrggbbaa, #rgb) outside tokens.css.
#   2. Raw oklch(...) literals outside tokens.css.
#   3. Raw pixel values used for padding, margin, border-radius, font-size,
#      or gap, where a --space-*, --radius-*, or --fs-* alias should be used.
#   4. Direct references to Layer 1 (--ds-*) tokens from outside tokens.css.
#
# For each finding, prints file, line, the offending snippet, and a hint.
#
# Exit codes:
#   Default:       always 0 (report-only), so adopters who have not yet
#                  filled in their tokens are not blocked.
#   STRICT=1:      exits 1 if any violation is found. Use this in CI once
#                  your codebase is clean and you want drift to block merges.
#
# Usage:
#   bash scripts/token-audit.sh             # report-only (default)
#   STRICT=1 bash scripts/token-audit.sh    # fail on violations
#
# No external dependencies beyond grep, find, and sed.

set -u

RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
CYAN="\033[0;36m"
BOLD="\033[1m"
RESET="\033[0m"

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root"

STRICT="${STRICT:-0}"

echo -e "${BOLD}M10 token audit${RESET}"
echo "  mode: $( [[ "$STRICT" == "1" ]] && echo "STRICT (violations will fail this run)" || echo "report-only (exit 0 regardless)" )"
echo ""

# Find every CSS file except the canonical token file and vendor/node_modules.
css_files=$(find . -type f -name '*.css' \
  -not -path './.git/*' \
  -not -path './node_modules/*' \
  -not -path './**/node_modules/*' \
  -not -name 'tokens.css' 2>/dev/null || true)

if [[ -z "$css_files" ]]; then
  echo -e "  ${GREEN}No component CSS files found outside tokens.css. Nothing to audit.${RESET}"
  echo "  (This is expected in the M10 starter repo until you add your own component CSS.)"
  exit 0
fi

violation_count=0

report() {
  local kind="$1"
  local file="$2"
  local line="$3"
  local match="$4"
  local hint="$5"
  printf "  ${RED}%-12s${RESET} ${CYAN}%s${RESET}:${BOLD}%s${RESET}\n" "$kind" "$file" "$line"
  printf "               %s\n" "$match"
  printf "               ${YELLOW}hint:${RESET} %s\n\n" "$hint"
  violation_count=$((violation_count + 1))
}

echo -e "${BOLD}1. Raw hex colors${RESET}"
echo "   Expected: var(--color-*) from tokens.css Layer 2 aliases."
echo ""

while IFS=: read -r file line match; do
  [[ -z "$file" ]] && continue
  report "RAW HEX" "$file" "$line" "$(echo "$match" | sed 's/^[[:space:]]*//')" \
    "Replace with a --color-* alias. See 04-design-system/specs/tokens/tokens.md for the map."
done < <(grep -nE '#[0-9A-Fa-f]{3,8}\b' $css_files 2>/dev/null || true)

echo -e "${BOLD}2. Raw oklch() literals${RESET}"
echo "   Expected: var(--color-*) from tokens.css."
echo ""

while IFS=: read -r file line match; do
  [[ -z "$file" ]] && continue
  report "RAW OKLCH" "$file" "$line" "$(echo "$match" | sed 's/^[[:space:]]*//')" \
    "Replace with a --color-* alias. Raw OKLCH belongs in tokens.css Layer 1 only."
done < <(grep -nE 'oklch\(' $css_files 2>/dev/null || true)

echo -e "${BOLD}3. Raw pixel values in spacing / radius / font-size / gap${RESET}"
echo "   Expected: var(--space-*), var(--radius-*), var(--fs-*)."
echo ""

while IFS=: read -r file line match; do
  [[ -z "$file" ]] && continue
  # Skip lines that already use var(); they are aliased, we just happened to match "px" inside a fallback.
  if echo "$match" | grep -q 'var('; then
    continue
  fi
  report "RAW PX" "$file" "$line" "$(echo "$match" | sed 's/^[[:space:]]*//')" \
    "Replace with a --space-*, --radius-*, or --fs-* alias."
done < <(grep -nE '(padding|margin|border-radius|font-size|gap)[^:]*:[^;]*[0-9]+px' $css_files 2>/dev/null || true)

echo -e "${BOLD}4. Direct Layer 1 (--ds-*) references outside tokens.css${RESET}"
echo "   Expected: always go through Layer 2 aliases. Layer 1 is tokens.css private."
echo ""

while IFS=: read -r file line match; do
  [[ -z "$file" ]] && continue
  report "LAYER 1" "$file" "$line" "$(echo "$match" | sed 's/^[[:space:]]*//')" \
    "Do not reference --ds-* directly. Add or use a Layer 2 alias in tokens.css instead."
done < <(grep -nE 'var\(--ds-' $css_files 2>/dev/null || true)

echo ""
echo -e "${BOLD}Summary${RESET}"
if [[ "$violation_count" -eq 0 ]]; then
  echo -e "  ${GREEN}Clean. No token violations found across $(echo "$css_files" | wc -l | tr -d ' ') file(s).${RESET}"
else
  echo -e "  ${RED}${violation_count} violation(s) found.${RESET}"
  echo -e "  Review 04-design-system/DESIGN.md 'Three-layer token architecture' and"
  echo -e "  04-design-system/specs/tokens/tokens.md for the alias map."
fi
echo ""

if [[ "$STRICT" == "1" && "$violation_count" -gt 0 ]]; then
  exit 1
fi
exit 0
