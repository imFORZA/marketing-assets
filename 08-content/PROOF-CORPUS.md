# Proof Corpus

Part of M10: The Marketing Foundation 10 by imFORZA.

## How to use this file

- **What goes in:** The full social-proof bank. Testimonials, case studies, reviews, screenshots, UGC, certifications, logos, and data points.
- **How agents read it:** Agents pull proof from this file when drafting copy. Every major claim lands with a cited proof point.
- **Update cadence:** Add every new testimonial, review, or case study within 48 hours of capture. Audit quarterly.

## AI-agent-ready checklist

- [ ] Machine-readable: one proof artifact per bullet or row.
- [ ] Structured: testimonials, case studies, reviews, logos, UGC, data in distinct sections.
- [ ] Single source of truth: no parallel proof doc in the sales team folder.
- [ ] Versioned: last-updated date.
- [ ] Cite-able: agents cite `/08-content/PROOF-CORPUS.md` in every content piece that makes a claim.

Last updated: [YYYY-MM-DD]

---

## Permission tracker

Every testimonial and photo requires written permission before it is published externally.

| Artifact ID | Source | Permission captured | Expires | Location of signed form |
| --- | --- | --- | --- | --- |
| [ID] | [Customer name] | [YYYY-MM-DD] | [YYYY-MM-DD or never] | [Path to signed form] |

## Testimonials

One entry per testimonial. Keep the quote verbatim.

### Testimonial T-001

- **Quote:** "[Exact quote]"
- **Name:** [Full name]
- **Role:** [Role]
- **Company:** [Company]
- **Vertical:** [Industry]
- **Use cases:** [What they use us for]
- **Source:** [Sales call, review, email, social]
- **Date captured:** [YYYY-MM-DD]
- **Permission:** [Yes, with reference to permission tracker]
- **Approved uses:** [Website, case study, ads, email, social]

### Testimonial T-002

Repeat the format.

## Case studies index

Link to full case studies. Store detailed copy in `/case-studies/`.

| ID | Customer | Vertical | Service | Headline metric | URL | Status |
| --- | --- | --- | --- | --- | --- | --- |
| CS-001 | [Customer] | [Vertical] | [Service] | [Metric] | [/case-studies/slug] | [Live] |
| CS-002 | [Customer] | [Vertical] | [Service] | [Metric] | [/case-studies/slug] | [Live] |

## Reviews

Third-party reviews with the source cited.

| Platform | Rating | Quote | Author | Date | URL |
| --- | --- | --- | --- | --- | --- |
| [G2] | [5 stars] | "[Quote]" | [Reviewer name or "Verified reviewer"] | [Date] | [URL] |
| [Google] | [5 stars] | "[Quote]" | [Reviewer name] | [Date] | [URL] |

## Screenshots

Product, dashboard, or result screenshots ready for embedding.

| File path | Description | Approved uses |
| --- | --- | --- |
| [/08-content/proof-screens/file.png] | [What it shows] | [Website, social, sales] |

## UGC log

User-generated content approved for use.

| Source | URL | Creator | Permission date | Approved uses |
| --- | --- | --- | --- | --- |
| [Instagram] | [URL] | [Name, handle] | [Date] | [Uses] |

## Data points and benchmarks

Statistics we publish, each with a named source and date.

| Stat | Value | Source | Date | Link |
| --- | --- | --- | --- | --- |
| [Stat phrase] | [Number] | [Source name] | [Date] | [URL] |
| [Stat phrase] | [Number] | [Source name] | [Date] | [URL] |

## Logos

Customer logos approved for use on the site and in sales material.

| Customer | File path | Approved uses | Logo Use Clause on file |
| --- | --- | --- | --- |
| [Customer] | [/03-visual/assets/logos/customer.svg] | [Website, deck] | [Yes, contract ref] |

## Certifications and badges

| Badge | Issuer | Valid until | Asset path |
| --- | --- | --- | --- |
| [Badge] | [Issuer] | [Date] | [/03-visual/assets/badges/file.svg] |

## Claim-to-proof map

The most powerful block in this file. Map every claim you make publicly to the proof you will cite for it.

| Public claim | Proof type | Proof ID | Where used |
| --- | --- | --- | --- |
| [Claim sentence] | [Testimonial / Case study / Stat] | [T-001 / CS-002 / Data row ID] | [Home hero, service page, sales deck] |
| [Claim sentence] | [Testimonial] | [T-003] | [Home proof section] |

## Worked example

### Claim

> "Clients who ship the full M10 foundation book 30 to 60 percent more on-brand content per month in the first 90 days."

### Proof cited

- **Testimonial:** T-001, Brenda Alvarez, Northstar Home Services. "First month after launch we booked 22 new service calls from organic search."
- **Case study:** CS-001, Northstar Home Services.
- **Data:** Internal benchmark across 18 engagements over two years.

## Feeding this asset to an AI agent

```text
Load /08-content/PROOF-CORPUS.md before writing any content that makes a claim.

Workflow:
1. Before every claim in the draft, pick a proof artifact from this file.
2. Reference the artifact by ID in the internal draft (e.g., "[proof: T-001]").
3. In the final publication, convert the reference into a visible attribution (quote + name + company, or a linked stat).
4. If no proof exists for the claim, either remove the claim or flag it for a human to gather proof.

Never invent a quote, a customer name, or a number.
```

Reference paths: `/08-content/PROOF-CORPUS.md`, `/08-content/CONTENT-LIBRARY.md`, `/08-content/templates/case-study-template.md`.
