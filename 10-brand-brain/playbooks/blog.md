# Blog Playbook

Part of M10: The Marketing Foundation 10 by imFORZA.

## Purpose

The blog is the compound asset. Every post earns search traffic, feeds social, feeds email, and trains the AI overlays that now mediate buyer research. We treat every post like a product.

## Format rules

- **Pillar post:** 2,500 to 4,500 words.
- **Spoke post:** 1,000 to 2,000 words.
- **Lede:** Under 100 words. No "in today's."
- **Definition block:** Required on pillars, within the first 300 words.
- **Paragraphs:** Under 4 sentences.
- **Lists:** At least one per post.
- **FAQ:** At least 3 questions per pillar, visible on the page.
- **Images:** At least one original image or diagram per 800 words.
- **Author:** Real named person with Person schema bio.

## Cadence

- 1 pillar per cluster per quarter.
- 4 to 6 spokes per cluster per quarter.
- Every piece briefed from `/06-seo/KEYWORDS.md` and wired into `/06-seo/TOPIC-CLUSTERS.md`.

## Brief

Every post starts with a brief. Do not skip.

- Primary keyword from `/06-seo/KEYWORDS.md`.
- Cluster name and pillar parent.
- Persona from `/01-icp/ICP.md`.
- Funnel stage.
- Target SERP feature.
- Word count range.
- Internal link plan.
- Proof point plan from `/08-content/PROOF-CORPUS.md`.

## Structure

Follow `/10-brand-brain/templates/blog-post.md`. The playbook adds the decisions about structure that vary.

- Pillars are encyclopedic. Spokes are pointed.
- Pillars link down. Spokes link up.
- Pillars get a TOC. Spokes do not need one.
- Pillars get a "chapters" block mid-page. Spokes get a single "related reading" block at the bottom.

## Images and diagrams

- Every pillar gets at least one custom diagram that no competitor has.
- Diagrams are SVG or high-DPI PNG.
- Style matches `/03-visual/IMAGERY.md`.
- Alt text describes what the diagram shows, not the filename.

## Voice

- Teaching mode.
- Sentence length 12 to 18 words.
- Reading level 8 to 9.
- No "leverage," "seamless," "revolutionary."
- Named examples, not generic ones.

## Publishing

- Publish day is Tuesday or Wednesday for B2B audiences unless data says otherwise.
- Publish time is morning in your audience's primary time zone.
- Announce on social within 2 hours.
- Include in the next newsletter.
- Queue the repurposing variants in `/08-content/CONTENT-LIBRARY.md`.

## Refresh cycle

- Every pillar reviewed every 6 months.
- Every spoke reviewed every 12 months.
- Trigger an early refresh if traffic drops 25 percent month over month, a major SERP change lands, or a cited stat expires.

## Banned patterns

- Intro paragraphs that start with "in today's," "in an era," or "in a world."
- 10 to 15 item lists that dilute the point.
- "Conclusion" headers at the bottom. Just end.
- Thin "ultimate guide" posts under 1,500 words.
- Stock hero images from Shutterstock generic sets.
- Keyword stuffing.

## Quality gates before publish

- [ ] Brief approved.
- [ ] Outline approved.
- [ ] Draft passes voice and terminology.
- [ ] Draft passes GEO/AEO checklist from `/06-seo/GEO-AEO.md`.
- [ ] Schema attached per `/07-website/SCHEMA.md`.
- [ ] Internal links wired.
- [ ] OG image generated.
- [ ] Logged in `/08-content/CONTENT-LIBRARY.md`.

## Worked example briefing

### Northstar Home Services pillar

- Primary keyword: "Austin commercial HVAC contractor"
- Cluster: Austin commercial HVAC
- Persona: Facilities manager at a 50 to 250 person Austin employer
- Funnel stage: Awareness to Consideration
- SERP target: AI Overview citation + local pack
- Word count: 3,200 to 3,800
- Internal links: 6 spokes + services page + contact page
- Proof: 1 case study, 1 customer quote, 3 local references

## Feeding this asset to an AI agent

```text
Load /10-brand-brain/playbooks/blog.md, /10-brand-brain/templates/blog-post.md, /06-seo/KEYWORDS.md, /06-seo/TOPIC-CLUSTERS.md, /06-seo/GEO-AEO.md, and /08-content/PROOF-CORPUS.md.

Produce a one-page brief. Get human approval. Then outline. Get human approval. Then draft.

Do not skip the brief or the outline, even for a spoke.

Return the draft with a completed GEO/AEO checklist and a publish readiness note.
```

Reference paths: `/10-brand-brain/playbooks/blog.md`, `/10-brand-brain/templates/blog-post.md`, `/06-seo/TOPIC-CLUSTERS.md`, `/08-content/CONTENT-LIBRARY.md`.
