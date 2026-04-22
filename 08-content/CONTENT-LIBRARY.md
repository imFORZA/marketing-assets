# Content Library

Part of M10: The Marketing Foundation 10 by imFORZA.

## How to use this file

- **What goes in:** Every piece of content the company owns, with metadata. Blog posts, guides, videos, podcasts, webinars, lead magnets, case studies, templates, white papers.
- **How agents read it:** Agents reference this file to avoid duplication, propose repurposing, and link to existing work rather than inventing new links.
- **Update cadence:** Add every asset within 48 hours of publication. Audit quarterly.

## AI-agent-ready checklist

- [ ] Machine-readable: tables of assets with the same columns.
- [ ] Structured: one section per asset type.
- [ ] Single source of truth.
- [ ] Versioned: last-updated date.
- [ ] Cite-able: agents cite `/08-content/CONTENT-LIBRARY.md` in every content proposal.

Last updated: [YYYY-MM-DD]

---

## Inventory columns, defined

- **Title:** The public headline.
- **URL:** The canonical URL.
- **Type:** Blog post, guide, video, podcast, webinar, lead magnet, case study, template, white paper, one-pager.
- **Persona:** Which ICP persona from `/01-icp/ICP.md`.
- **Stage:** Awareness, Consideration, Decision.
- **Cluster:** Which topic cluster from `/06-seo/TOPIC-CLUSTERS.md`.
- **Primary keyword:** From `/06-seo/KEYWORDS.md`.
- **Owner:** Name of the person accountable.
- **Status:** Draft, Live, Refresh due, Archive.
- **Published:** YYYY-MM-DD.
- **Last updated:** YYYY-MM-DD.
- **Performance:** Latest meaningful number (traffic, leads, conversions).

## Blog posts

| Title | URL | Persona | Stage | Cluster | Primary KW | Owner | Status | Published | Updated | Traffic (90d) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| [Title] | [/blog/slug] | [Persona] | [Stage] | [Cluster] | [KW] | [Owner] | [Live] | [Date] | [Date] | [N] |
| [Title] | [/blog/slug] | [Persona] | [Stage] | [Cluster] | [KW] | [Owner] | [Live] | [Date] | [Date] | [N] |

## Guides and long-form

| Title | URL | Persona | Stage | Gated? | Owner | Status | Published | Downloads |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| [Guide title] | [/guides/slug] | [Persona] | [Consideration] | [Yes/No] | [Owner] | [Live] | [Date] | [N] |

## Videos

| Title | Platform | URL | Persona | Stage | Owner | Status | Published | Views |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| [Title] | [YouTube/Vimeo/Loom] | [URL] | [Persona] | [Stage] | [Owner] | [Live] | [Date] | [N] |

## Podcasts

| Episode | Show | URL | Guest | Persona | Owner | Status | Published | Listens |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| [Title] | [Show] | [URL] | [Guest] | [Persona] | [Owner] | [Live] | [Date] | [N] |

## Webinars and live events

| Title | URL | Persona | Stage | Date live | Recording URL | Registrants | Attendees |
| --- | --- | --- | --- | --- | --- | --- | --- |
| [Title] | [URL] | [Persona] | [Consideration] | [Date] | [URL] | [N] | [N] |

## Lead magnets

| Title | Form URL | Landing page | Persona | Stage | Owner | Downloads (90d) |
| --- | --- | --- | --- | --- | --- | --- |
| [Title] | [URL] | [URL] | [Persona] | [Stage] | [Owner] | [N] |

## Case studies

| Customer | URL | Service | Vertical | Headline metric | Owner | Status | Published |
| --- | --- | --- | --- | --- | --- | --- | --- |
| [Customer] | [/case-studies/slug] | [Service] | [Vertical] | [Metric] | [Owner] | [Live] | [Date] |

## Templates and tools

| Title | URL | Persona | Stage | Downloads |
| --- | --- | --- | --- | --- |
| [Template name] | [URL] | [Persona] | [Stage] | [N] |

## One-pagers, decks, and PDFs

| Title | Use case | Owner | Location | Status |
| --- | --- | --- | --- | --- |
| [Title] | [Sales, marketing, partner, investor] | [Owner] | [Drive / DAM link] | [Status] |

## Repurposing map

Every major asset gets a repurposing plan. Log which variants exist for each source asset.

| Source asset | LinkedIn post | X thread | Newsletter | Short video | Quora answer | Podcast hook |
| --- | --- | --- | --- | --- | --- | --- |
| [Pillar post] | [Link or status] | [Link or status] | [Link or status] | [Link or status] | [Link or status] | [Link or status] |

## Content retirement rules

- Pages with fewer than 50 organic visits per quarter for four consecutive quarters are candidates for retirement.
- Before retirement, decide between archive, merge, or redirect.
- Never delete without adding a 301 redirect to the most relevant living page.

## Refresh queue

The queue of content that needs a refresh in the next 30 days.

| Title | URL | Why | Owner | Target publish |
| --- | --- | --- | --- | --- |
| [Title] | [URL] | [Stale stat, broken link, shifted keyword] | [Owner] | [Date] |

## Worked example

### Cypress Coffee Co. content library (partial)

| Title | URL | Type | Persona | Stage | Cluster |
| --- | --- | --- | --- | --- | --- |
| How to choose a specialty coffee roaster | `/blog/choose-specialty-coffee-roaster` | Pillar post | Wholesale buyer | Awareness | Choosing a roaster |
| Direct trade vs. fair trade, explained | `/blog/direct-trade-vs-fair-trade` | Blog post | Retail shopper | Awareness | Choosing a roaster |
| Eight questions to ask a roaster before you sign | `/blog/wholesale-roaster-questions` | Blog post | Wholesale buyer | Consideration | Choosing a roaster |
| Wholesale partner playbook | `/guides/wholesale-playbook` | Guide | Wholesale buyer | Consideration | Wholesale |
| Northstar Home Services case study | `/case-studies/northstar` | Case study | Wholesale buyer | Decision | Proof |

## Feeding this asset to an AI agent

```text
Load /08-content/CONTENT-LIBRARY.md before proposing any new content.

Before writing:
1. Search the library for overlap. Do not duplicate an existing piece.
2. If a similar piece exists and is stale, propose a refresh rather than a new post.
3. Check the repurposing map. If the source piece exists, propose a missing variant.
4. When writing, link to at least two existing library assets that match the persona.

Cite /08-content/CONTENT-LIBRARY.md in the content brief.
```

Reference paths: `/08-content/CONTENT-LIBRARY.md`, `/08-content/EDITORIAL-CALENDAR.md`, `/08-content/PROOF-CORPUS.md`.
