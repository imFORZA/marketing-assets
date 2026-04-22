# Keyword Strategy

Part of M10: The Marketing Foundation 10 by imFORZA.

## How to use this file

- **What goes in:** The keywords you target, ranked. Each keyword has a search intent, a target page, a SERP-feature goal, and a priority.
- **How agents read it:** Agents reference this file when writing any piece of content, to choose a primary keyword, secondary keywords, and a SERP strategy.
- **Update cadence:** Audit monthly. Rebuild quarterly. Add rows as new winning keywords emerge from search consoles, review mining, and customer interviews.

## AI-agent-ready checklist

- [ ] Machine-readable: keywords in tables with predictable columns.
- [ ] Structured: intent, priority, target page, SERP feature, branded vs. non-branded.
- [ ] Single source of truth: no parallel keyword list in an SEO agency spreadsheet.
- [ ] Versioned: last-updated date.
- [ ] Cite-able: agents cite `/06-seo/KEYWORDS.md` when briefing content.

Last updated: [YYYY-MM-DD]

---

## Keyword tiers

Three tiers, clearly separated.

- **Primary keywords:** 10 to 20 terms you must win. Clear intent. Clear commercial value. Clear target page.
- **Secondary keywords:** 20 to 40 terms you want to win. Support the primaries.
- **Long-tail keywords:** 100 plus terms, grouped into clusters. These feed individual blog posts and FAQs.

## Primary keywords

| Keyword | Intent | Monthly volume | Difficulty | SERP feature target | Target page | Priority | Current rank |
| --- | --- | --- | --- | --- | --- | --- | --- |
| [Primary term 1] | [Commercial] | [Volume] | [0-100] | [Featured snippet / AI overview / PAA] | [/service/...] | [High] | [Position] |
| [Primary term 2] | [Transactional] | [Volume] | [0-100] | [Organic top 3] | [/pricing] | [High] | [Position] |
| [Primary term 3] | [Informational] | [Volume] | [0-100] | [PAA] | [/blog/...] | [Medium] | [Position] |
| [Primary term 4] | [Commercial] | [Volume] | [0-100] | [AI overview citation] | [/compare/...] | [High] | [Position] |
| [Primary term 5] | [Navigational] | [Volume] | [0-100] | [Sitelinks] | [/] | [High] | [Position] |

## Secondary keywords

| Keyword | Intent | Monthly volume | Difficulty | Target page | Priority |
| --- | --- | --- | --- | --- | --- |
| [Secondary term 1] | [Intent] | [Volume] | [0-100] | [Page] | [Med] |
| [Secondary term 2] | [Intent] | [Volume] | [0-100] | [Page] | [Med] |
| [Secondary term 3] | [Intent] | [Volume] | [0-100] | [Page] | [Low] |

## Long-tail clusters

Group long-tail keywords under a head phrase. Each cluster becomes a pillar-and-spoke content plan in `TOPIC-CLUSTERS.md`.

### Cluster: [Head phrase 1]

- [Long-tail term 1]
- [Long-tail term 2]
- [Long-tail term 3]
- [Long-tail term 4]
- [Long-tail term 5]

### Cluster: [Head phrase 2]

- [Long-tail term 1]
- [Long-tail term 2]
- [Long-tail term 3]

## Branded vs. non-branded

Track the split every quarter. Healthy foundations have both.

| Type | Target share of traffic | Example keywords |
| --- | --- | --- |
| Branded | [20 to 35 percent] | [Company name, product names, founder names] |
| Non-branded | [65 to 80 percent] | [Category terms, problem terms, solution terms] |

## Search intent mapping

Every keyword belongs in one of four buckets.

- **Informational:** The buyer is researching. They want to understand a concept, a method, or an option.
- **Navigational:** The buyer is looking for a specific site or brand.
- **Commercial investigation:** The buyer is comparing solutions. They want reviews, comparisons, and case studies.
- **Transactional:** The buyer is ready to act. They want a price, a demo, a signup, or a call.

Map every keyword to its bucket before assigning a page.

## SERP features

Name the SERP feature you want to win per keyword.

- **Featured snippet:** Answer the question in 40 to 60 words immediately under an H2 shaped like the question.
- **People Also Ask:** Answer 3 to 5 sub-questions in the post. Each sub-question gets its own H2 or H3.
- **AI overview citation:** Use entity-clear language. Define the term in a single sentence early.
- **Local pack:** Use location-specific pages and schema.
- **Image pack:** Include original images with descriptive alt text.
- **Video carousel:** Pair written content with a 60 to 180 second video.

## Seasonal terms

Terms that spike at predictable times. Plan content 8 to 12 weeks ahead.

| Term | Peak window | Publish by | Assigned to |
| --- | --- | --- | --- |
| [Seasonal term 1] | [Month] | [Month - 2] | [Owner] |
| [Seasonal term 2] | [Month] | [Month - 2] | [Owner] |

## Research log

One row per research session. Keeps the audit trail honest.

| Date | Tool used | Query | Finding | Action |
| --- | --- | --- | --- | --- |
| [YYYY-MM-DD] | [Ahrefs / Semrush / Google Search Console / Perplexity] | [Query] | [What we learned] | [Add to primary / Park / Reject] |

## Worked example

### Cypress Coffee Co. primary keywords

| Keyword | Intent | Vol | Diff | SERP target | Page | Priority |
| --- | --- | --- | --- | --- | --- | --- |
| "wholesale specialty coffee roaster pacific northwest" | Commercial | 320 | 42 | Organic top 3 | `/wholesale` | High |
| "how to choose a specialty coffee roaster" | Informational | 540 | 35 | Featured snippet | `/blog/choosing-a-roaster` | Medium |
| "cypress coffee co" | Navigational | 1200 | 15 | Sitelinks | `/` | High |
| "best coffee subscription portland" | Commercial | 480 | 55 | Local pack, AI overview | `/subscription/portland` | High |
| "direct trade coffee meaning" | Informational | 880 | 28 | PAA | `/blog/direct-trade-coffee` | Medium |

## Feeding this asset to an AI agent

```text
Load /06-seo/KEYWORDS.md before briefing any content piece.

Before writing, decide:
1. The primary keyword for the piece (from Primary or Long-tail tables).
2. Two to four secondary keywords.
3. The target SERP feature.
4. The target page or URL slug.

Use the primary keyword in the H1, once in the first 100 words, and once in a meta description that stays under 155 characters. Do not keyword stuff.

Reference paths: /06-seo/KEYWORDS.md, /06-seo/TOPIC-CLUSTERS.md, /06-seo/GEO-AEO.md.
```
