# Case Study Template

Part of M10: The Marketing Foundation 10 by imFORZA.

Replace every `[bracket]`. Keep the section order. Aim for 700 to 1,200 words in the final case study.

---

**Use the following frontmatter in your CMS.**

```yaml
title: "[Customer first result headline, e.g., 'How Northstar Home Services booked 47 organic leads in 60 days']"
slug: "[customer-slug]"
customer: "[Customer legal name]"
vertical: "[Industry]"
service: "[Offer name from /05-offer/OFFER.md]"
persona: "[Primary persona name from /01-icp/ICP.md]"
headline_metric: "[Primary number, e.g., '47 new organic leads in 60 days']"
published: "[YYYY-MM-DD]"
updated: "[YYYY-MM-DD]"
cover_image: "/assets/case-studies/[slug]/cover.jpg"
author: "[Author Name]"
```

---

## [Customer first result headline]

A short deck line underneath the headline, one sentence, under 20 words.

### The customer at a glance

- **Company:** [Legal name]
- **Industry:** [Vertical]
- **Size:** [Employees, revenue band]
- **Location:** [City, country]
- **Years in business:** [Number]
- **Our engagement:** [Offer name, length, start date]
- **Our point of contact:** [Name, role]

### The problem

Write two paragraphs. First paragraph describes the situation and the stakes. Second paragraph describes the trigger event and what the buyer tried before.

- [What was happening before we came in]
- [What was the cost of inaction, in dollars or time]
- [What had they tried that did not work]
- [What finally pushed them to change]

### The approach

One paragraph and a bulleted plan. Show the sequence, not the slide deck.

1. [Step 1 we took]
2. [Step 2 we took]
3. [Step 3 we took]
4. [Step 4 we took]
5. [Step 5 we took]

### The build

Describe what was actually produced. Name the assets, the channels, and the artifacts.

- [Asset 1: what it was, where it was used]
- [Asset 2]
- [Asset 3]
- [Asset 4]

### The results

Lead with numbers. Use the same period for every number, or label clearly if periods differ.

- [Number 1, with period]
- [Number 2, with period]
- [Number 3, with period]
- [Number 4, with period]

Include a short paragraph that frames the numbers in the context of the business. A 47 percent lift on a small base is not a 47 percent lift on a big base. Say what the numbers mean for the reader.

### Pull quotes

Two or three quotes, each 1 to 3 sentences, each attributed.

> "[Pull quote 1 that captures the problem or the moment of change.]"
> [Name], [Role], [Customer]

> "[Pull quote 2 that captures the outcome or the feeling of the outcome.]"
> [Name], [Role], [Customer]

### The lesson

One paragraph. This is not "moral of the story." This is a generalizable insight the reader can take back to their own business, whether or not they hire us.

### Proof artifacts

Link the supporting artifacts stored in `/08-content/PROOF-CORPUS.md`.

- [ ] Screenshot: [File path]
- [ ] Dashboard share: [URL]
- [ ] Before and after snapshot: [File path]
- [ ] Third-party validation: [Award, review, badge]

### Services used

Link to `/05-offer/OFFER.md`.

- [Service 1]
- [Service 2]
- [Service 3]

### What we would do differently

An honest one-paragraph note. What did we underestimate. What would we try first if we ran the engagement again. This paragraph earns more trust than any number.

### About [Customer]

Two to three sentences describing the customer's business in their own words, taken from their About page or a confirmed bio line.

### About [Company]

Standard two to three sentence company boilerplate. Same across every case study.

### Ready to see what this would look like for your business?

- [CTA button: "Book a 30-minute audit"]
- [Secondary link: "Read the next case study"]

---

## Image checklist

- [ ] Cover image, 2560x1440, compressed.
- [ ] Team photo or product shot, 1600x1000.
- [ ] Before-and-after screenshot pair, same dimensions.
- [ ] Thumbnail for the proof hub, 1200x800.

## Schema to include

- `Article` from `/07-website/SCHEMA.md`
- `Review` if the case study contains a standalone review quote.

## Voice reminders

- Lead every paragraph with the subject or the claim, never with "in today's..."
- Name people, companies, tools, and numbers.
- No em dashes.
- Reading level 8 to 9.

## Feeding this asset to an AI agent

```text
Load /08-content/templates/case-study-template.md, /05-offer/OFFER.md, /08-content/PROOF-CORPUS.md, and /02-voice/VOICE.md before drafting a case study.

Workflow:
1. Gather raw material: one 45-minute customer interview, the dashboard share, and a verified headline metric.
2. Write each section in order. Do not skip ahead.
3. Run every claim back to a proof artifact by ID.
4. Keep quotes verbatim.
5. Pass the final draft to the customer for review before publishing.
```

Reference paths: `/08-content/templates/case-study-template.md`, `/08-content/PROOF-CORPUS.md`, `/05-offer/OFFER.md`, `/02-voice/VOICE.md`.
