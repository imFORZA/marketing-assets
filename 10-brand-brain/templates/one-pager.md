# One-Pager Template

Part of M10: The Marketing Foundation 10 by imFORZA.

A fill-in-the-blank template for a sales one-pager, a partner one-pager, or a campaign one-pager. The goal is that any human or any agent can produce a useful one-pager in under 30 minutes.

## How agents use this template

1. Load `/05-offer/OFFER.md` for the offer.
2. Load `/08-content/PROOF-CORPUS.md` for proof.
3. Load `/03-visual/VISUAL-BRAND.md` and `/04-design-system/theme.json` for styling.
4. Load `/02-voice/VOICE.md` for voice.

## Variables

| Variable | Source |
| --- | --- |
| `{{TITLE}}` | Offer name + outcome |
| `{{HEADLINE}}` | Primary promise |
| `{{FOR_WHOM}}` | Persona from `/01-icp/ICP.md` |
| `{{WHAT}}` | Offer description |
| `{{HOW}}` | Steps |
| `{{WHY_DIFFERENT}}` | Differentiators |
| `{{PROOF}}` | Top 3 proof points |
| `{{PRICING}}` | Price band |
| `{{CTA_LABEL}}` and `{{CTA_URL}}` | Conversion path |

---

## Structure (single-page PDF or print)

### Top band

- Logo top-left.
- Title top-right: `{{TITLE}}`.
- Horizontal rule using `color.neutral.200`.

### Headline block

- `{{HEADLINE}}` in `fs.h1` weight 700.
- One-sentence sub-head in `fs.body.lg`.

### For whom

- Header: "For"
- Three bullet lines describing the target audience pulled from `/01-icp/ICP.md`.

### What

- Header: "What you get"
- Four to six bullets pulled from `/05-offer/OFFER.md` deliverables.

### How

- Header: "How it works"
- Three to five numbered steps.

### Why different

- Header: "Why we do this better"
- Three bullets pulled from `/05-offer/OFFER.md` differentiators.

### Proof

- Header: "Proof"
- One testimonial with name, role, company.
- One stat with source.
- One logo strip.

### Pricing

- Header: "Investment"
- One line with the price or starting-at band.
- One line on what affects price.

### CTA

- Header: "Next step"
- `{{CTA_LABEL}}` button leading to `{{CTA_URL}}`.
- QR code for print.

### Footer band

- Company legal name.
- Contact email.
- Contact phone if applicable.
- Website URL.
- File version and date.

## Layout rules

- Single page. US Letter or A4.
- Margins 0.5 inch.
- Colors pulled from `/04-design-system/theme.json`.
- Typography pulled from the type scale. Do not invent sizes.
- All caps reserved for headers and used sparingly.

## Use cases

### Sales one-pager

- Leave-behind for a first call.
- Shortens the time between interest and follow-up.

### Partner one-pager

- For referral partners and ecosystem partners.
- Explains how to spot a good fit referral.

### Campaign one-pager

- Supports a specific campaign from `/10-brand-brain/campaigns/`.
- Includes campaign-specific CTAs and UTMs.

## Pre-publish checklist

- [ ] Fits on one page.
- [ ] Voice and terminology rules followed.
- [ ] Pricing accurate and dated.
- [ ] Proof cited.
- [ ] Brand colors and type applied.
- [ ] CTA carries UTMs.
- [ ] PDF exported with accessible text (not rasterized).
- [ ] File version and date in the footer.

## Worked example: Marketing Foundation Audit one-pager

- Title: Marketing Foundation Audit.
- Headline: Your AI-ready marketing foundation in 60 days.
- For whom: Operators at small and growing businesses, ops directors, founders in AI-aware organizations with under 250 employees.
- What: 8 working sessions, voice-of-customer interviews, filled Foundation 10 repo, brand brain system prompt tested in three assistants, recorded handoff walkthrough.
- How: Kickoff, research, fill, test, ship.
- Why different: A foundation you own, not a retainer you rent. A system your next AI tool reads on day one.
- Proof: Testimonial from Brenda Alvarez at Northstar Home Services. 47 organic leads in 60 days. Three logos.
- Pricing: $24,000, 50/50.
- CTA: Book a 30-minute audit.

## Feeding this asset to an AI agent

```text
Load /10-brand-brain/templates/one-pager.md.

Fill every {{VARIABLE}}. Use the files listed for source data. Do not invent.

Produce the one-pager as a Markdown block plus a layout note for the designer or a direct styled export. Run the pre-publish checklist. Return the deliverable ready for design handoff.
```

Reference paths: `/10-brand-brain/templates/one-pager.md`, `/05-offer/OFFER.md`, `/08-content/PROOF-CORPUS.md`, `/03-visual/VISUAL-BRAND.md`, `/04-design-system/theme.json`.
