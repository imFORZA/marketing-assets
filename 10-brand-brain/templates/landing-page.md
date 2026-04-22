# Landing Page Template

Part of M10: The Marketing Foundation 10 by imFORZA.

A fill-in-the-blank template for a conversion-focused landing page. Works for a service offer, a lead magnet, or a campaign.

## How agents use this template

1. Load `/01-icp/ICP.md` and `/01-icp/BUYER-COMMITTEE.md` for audience.
2. Load `/05-offer/OFFER.md` for promise and proof.
3. Load `/07-website/SITE-MAP.md` for URL structure.
4. Load `/07-website/SCHEMA.md` for schema requirements.
5. Load `/08-content/PROOF-CORPUS.md` for testimonials, case studies, and data points.
6. Load `/09-data/TRACKING-PLAN.md` for CTA tracking.

## Variables

| Variable | Source |
| --- | --- |
| `{{PRIMARY_PROMISE}}` | `/05-offer/OFFER.md` |
| `{{ICP_NAME}}` | `/01-icp/ICP.md` |
| `{{PAIN_POINT}}` | `/01-icp/ICP.md` |
| `{{OFFER_NAME}}` | `/05-offer/OFFER.md` |
| `{{OFFER_DESCRIPTION}}` | `/05-offer/OFFER.md` |
| `{{DELIVERABLES}}` | `/05-offer/OFFER.md` |
| `{{TIMELINE}}` | `/05-offer/OFFER.md` |
| `{{PRICE_BAND}}` | `/05-offer/OFFER.md` |
| `{{PROOF_A}}`, `{{PROOF_B}}`, `{{PROOF_C}}` | `/08-content/PROOF-CORPUS.md` |
| `{{FAQ_Q1}}` through `{{FAQ_Q5}}` | Customer interviews and `/01-icp/VOICE-OF-CUSTOMER.md` |
| `{{CTA_PRIMARY_LABEL}}` | Conversion path from `/07-website/SITE-MAP.md` |
| `{{CTA_PRIMARY_URL}}` | `/07-website/SITE-MAP.md` |

---

## Page structure

### Hero

- **H1 (8 to 14 words):** `{{PRIMARY_PROMISE}} written in the voice of the reader.`
- **Sub-head (1 to 2 sentences):** Explain who this is for and what happens when they click.
- **Primary CTA:** `{{CTA_PRIMARY_LABEL}}` linking to `{{CTA_PRIMARY_URL}}` with UTMs per `/09-data/TRACKING-PLAN.md`.
- **Secondary CTA:** Read a case study.
- **Supporting visual:** One image from `/03-visual/` or a screenshot from `/08-content/`.

### Social proof strip

A single line under the hero.

- Three customer logos + the headline metric from the best case study.
- Example: "Trusted by [Logo] [Logo] [Logo]. Clients book 30 to 60 percent more on-brand content in the first 90 days."

### Problem section

Two or three paragraphs. Speak directly to `{{ICP_NAME}}`.

- Open with a field-level pain statement: "Most `{{ICP_ROLE}}`s I meet are stuck on one thing: `{{PAIN_POINT}}`."
- Two supporting sentences that validate the pain in the reader's words, pulled from `/01-icp/VOICE-OF-CUSTOMER.md`.

### The promise section

State what you do, in plain language.

- **H2:** "What you get"
- Three bullets pulled from `{{DELIVERABLES}}`.
- One image or diagram.

### Offer detail

Table of contents for what is included.

| Included | Detail |
| --- | --- |
| Deliverable 1 | [One sentence] |
| Deliverable 2 | [One sentence] |
| Deliverable 3 | [One sentence] |
| Deliverable 4 | [One sentence] |

### Timeline

Three to five steps, each a single sentence.

1. Week 0: Kickoff call and shared workspace.
2. Weeks 1 to 2: Voice-of-customer interviews and first asset drafts.
3. Weeks 3 to 5: Fill-in the Foundation 10.
4. Weeks 6 to 7: Brand Brain system prompt, tested in Claude, ChatGPT, and Gemini.
5. Week 8: Final walkthrough and recorded handoff.

### Pricing band

- **Starting at:** `{{PRICE_BAND}}`.
- One sentence explaining what affects price (scope, geography, regulated industry).

### Proof section

Three testimonials and a case study thumbnail.

- Testimonial 1: `{{PROOF_A}}` with full name, role, company, permission captured.
- Testimonial 2: `{{PROOF_B}}`.
- Testimonial 3: `{{PROOF_C}}`.
- Link to one full case study from `/08-content/PROOF-CORPUS.md`.

### FAQ

Five questions, each answered in 40 to 80 words.

1. **Q: `{{FAQ_Q1}}`** A: [Answer]
2. **Q: `{{FAQ_Q2}}`** A: [Answer]
3. **Q: `{{FAQ_Q3}}`** A: [Answer]
4. **Q: `{{FAQ_Q4}}`** A: [Answer]
5. **Q: `{{FAQ_Q5}}`** A: [Answer]

Wire to `FAQPage` schema in `/07-website/SCHEMA.md`.

### Secondary CTA block

- **H2:** "Not ready to book?"
- Subscribe to newsletter.
- Download a related lead magnet.

### Footer CTA

Repeat the primary CTA at the bottom of the page.

## Schema to include

- `Service` (if the page describes a service).
- `Offer` (embedded inside Service).
- `FAQPage` (from the FAQ block).
- `BreadcrumbList`.

## Metadata

- **Title tag:** 50 to 60 characters. Primary keyword + value.
- **Meta description:** 140 to 155 characters. Promise + outcome + CTA.
- **OG image:** Generated per `/03-visual/AI-IMAGE-PROMPTS.md`.

## Accessibility checklist

- All images have alt text.
- Buttons reach WCAG 2.2 AA contrast.
- Focus states are visible on every interactive element.
- Headings follow a logical H1 → H2 → H3 tree.

## Tracking

Every CTA has `cta_id`, `cta_label`, `cta_page`, `cta_position`. Every form has `form_id` and `form_source`. All CTAs carry UTMs per `/09-data/TRACKING-PLAN.md`.

## Worked example

Marketing Foundation Audit landing page headline: "Write your marketing foundation once. Every AI tool you buy gets better." Sub-head: "A 60-day audit for small and growing businesses that want their marketing to compound instead of restart."

## Feeding this asset to an AI agent

```text
Load /10-brand-brain/templates/landing-page.md.

Fill every {{VARIABLE}}. Pull from the files listed. Do not invent.

Write the page top to bottom. Verify schema, tracking, accessibility, and voice before handing off. Return a block that is ready for the CMS.
```

Reference paths: `/10-brand-brain/templates/landing-page.md`, `/05-offer/OFFER.md`, `/07-website/SITE-MAP.md`, `/07-website/SCHEMA.md`, `/08-content/PROOF-CORPUS.md`.
