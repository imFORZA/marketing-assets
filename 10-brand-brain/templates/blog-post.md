# Blog Post Template

Part of M10: The Marketing Foundation 10 by imFORZA.

A fill-in-the-blank template for long-form editorial. Works for pillar posts (2,500 to 4,500 words) and spokes (1,000 to 2,000 words).

## How agents use this template

1. Load `/06-seo/KEYWORDS.md` to pick `{{PRIMARY_KEYWORD}}` and secondary keywords.
2. Load `/06-seo/TOPIC-CLUSTERS.md` to confirm the cluster.
3. Load `/06-seo/GEO-AEO.md` for the entity and definition rules.
4. Load `/01-icp/ICP.md` and `/01-icp/VOICE-OF-CUSTOMER.md` for audience and language.
5. Load `/02-voice/VOICE.md` for sentence and format rules.
6. Load `/08-content/PROOF-CORPUS.md` for proof.
7. Load `/07-website/SCHEMA.md` for the required schema.

## Variables

| Variable | Source |
| --- | --- |
| `{{H1}}` | Primary keyword shaped as a buyer query |
| `{{PRIMARY_KEYWORD}}` | `/06-seo/KEYWORDS.md` |
| `{{SECONDARY_KEYWORDS}}` | `/06-seo/KEYWORDS.md` |
| `{{ENTITY}}` | The main entity the post is about |
| `{{DEFINITION}}` | 40 to 60 word definition |
| `{{HEADER_1}}` through `{{HEADER_N}}` | Section outline |
| `{{PROOF_POINT_1}}` through `{{PROOF_POINT_N}}` | `/08-content/PROOF-CORPUS.md` |
| `{{FAQ_Q_1}}` through `{{FAQ_Q_5}}` | Common reader questions |
| `{{AUTHOR_NAME}}` | Real author |
| `{{CTA_LABEL}}` | `/07-website/SITE-MAP.md` |
| `{{CTA_URL}}` | `/07-website/SITE-MAP.md` |

---

## Front matter (for a Markdown CMS)

```yaml
title: "{{H1}}"
slug: "{{SLUG}}"
description: "{{META_DESCRIPTION}}"
primary_keyword: "{{PRIMARY_KEYWORD}}"
secondary_keywords: [{{SECONDARY_KEYWORDS}}]
cluster: "{{CLUSTER}}"
persona: "{{PERSONA_NAME}}"
stage: "{{STAGE}}"
author: "{{AUTHOR_NAME}}"
published: "{{PUBLISH_DATE}}"
updated: "{{UPDATE_DATE}}"
cover_image: "/assets/blog/{{SLUG}}.jpg"
```

## Structure

### H1

`{{H1}}` shaped like a real buyer query. Under 70 characters.

### Lede (first 100 words)

- Sentence 1: Name the reader. Name the problem.
- Sentence 2: State the promise of the article.
- Sentence 3 to 5: Tease the payoff.

Do not start with "in today's," "in an era," "in a world," or any variation.

### Definition block

For pillar posts, include within the first 300 words.

```
### What is {{ENTITY}}?

{{DEFINITION}} in 40 to 60 words. Plain language. One sentence that names the entity. One sentence that connects it to the reader's problem. One sentence that distinguishes it from adjacent concepts.
```

### Table of contents (for pillars over 2,000 words)

A visible TOC. Three to seven sections.

### Body sections

For pillar:

- Section 1: The problem, named with specifics.
- Section 2: The concept, explained plainly.
- Section 3: The method, step by step.
- Section 4: The proof, with named customers.
- Section 5: The counterargument, addressed head-on.
- Section 6: The checklist or framework readers can take away.

For spoke:

- Section 1: The question, rephrased and narrowed.
- Section 2: The answer, direct.
- Section 3: The three reasons the answer matters.
- Section 4: The example, specific and cited.

Each section:

- Opens with a claim.
- Uses short paragraphs (under 4 sentences).
- Includes at least one bullet list or numbered list.
- Includes at least one cited proof point.
- Includes at least one internal link up to the pillar or across to a sibling spoke.

### Proof section

Pull from `/08-content/PROOF-CORPUS.md`. Include by name.

- Customer testimonial with full attribution.
- Numbered case study reference with link.
- Cited industry stat with source and date.

### FAQ section

Five questions. 40 to 80 words per answer. Wire to `FAQPage` schema.

### Author block

Named author with photo and Person schema bio link.

### CTA block

One primary CTA. Link to the conversion path from `/07-website/SITE-MAP.md`.

### Related reading

Three links. One to the pillar. Two to sibling spokes from the same cluster.

## Metadata

- **Title tag:** 50 to 60 characters, primary keyword near the front.
- **Meta description:** 140 to 155 characters.
- **OG image:** 1200x630 from `/03-visual/AI-IMAGE-PROMPTS.md`.
- **Canonical URL:** The one published URL, no query strings.

## Schema

Include `Article` or `BlogPosting`, plus `FAQPage` when the FAQ section is present, plus `BreadcrumbList`.

## GEO/AEO checklist

- [ ] H1 names the entity.
- [ ] 40 to 60 word definition block in the first 300 words.
- [ ] At least one direct answer positioned for AI-overview extraction.
- [ ] At least one numbered list.
- [ ] At least three FAQ questions answered.
- [ ] Every stat cites a source inline.
- [ ] Named author, verified Person schema.
- [ ] Last-updated date visible.

## Pre-publish checklist

- [ ] Primary keyword in H1, first 100 words, and meta description.
- [ ] Two sibling internal links present.
- [ ] Pillar link present for spokes.
- [ ] At least one cited proof point.
- [ ] Voice and terminology rules followed.
- [ ] Compliance flags checked.
- [ ] Schema validated.
- [ ] Tracking tag on CTAs.
- [ ] Logged in `/08-content/CONTENT-LIBRARY.md`.
- [ ] Human editor reviewed.

## Worked example

See `/08-content/CONTENT-LIBRARY.md` for a filled example. The "How to choose a specialty coffee roaster" pillar is the reference.

## Feeding this asset to an AI agent

```text
Load /10-brand-brain/templates/blog-post.md and the supporting files listed at the top.

Choose pillar or spoke length.
Fill every {{VARIABLE}}.
Write top to bottom.
Run the GEO/AEO and pre-publish checklists.
Return a draft ready for editor review.
```

Reference paths: `/10-brand-brain/templates/blog-post.md`, `/06-seo/KEYWORDS.md`, `/06-seo/TOPIC-CLUSTERS.md`, `/06-seo/GEO-AEO.md`, `/08-content/PROOF-CORPUS.md`, `/07-website/SCHEMA.md`.
