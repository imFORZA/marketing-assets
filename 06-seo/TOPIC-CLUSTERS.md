# Topic Clusters and Content Architecture

Part of M10: The Marketing Foundation 10 by imFORZA.

## How to use this file

- **What goes in:** The hub-and-spoke map of every pillar page and its supporting posts. Internal-link plans. Content gaps.
- **How agents read it:** Agents load this file when they propose a new post, so they know where it fits, what it links to, and which pillar it supports.
- **Update cadence:** Revisit quarterly. A cluster with fewer than six spokes is unfinished. A cluster with more than fifteen is probably two clusters.

## AI-agent-ready checklist

- [ ] Machine-readable: cluster map in a predictable tree structure.
- [ ] Structured: pillar page, spoke list, internal link plan, content gaps.
- [ ] Single source of truth: no alternate content map in a different doc.
- [ ] Versioned: last-updated date.
- [ ] Cite-able: agents cite `/06-seo/TOPIC-CLUSTERS.md` in every content brief.

Last updated: [YYYY-MM-DD]

---

## The hub-and-spoke model

- **Pillar page:** 2,500 to 4,500 words. Covers a head topic broadly. Owned by one person.
- **Spoke posts:** 1,000 to 2,000 words each. Each spoke goes deep on one sub-topic. Links up to the pillar. Links across to at least two sibling spokes.
- **Cluster:** One pillar plus six to twelve spokes. Covers one discipline or one persona problem.

## Cluster inventory

| Cluster | Pillar page | Spokes | Last updated | Owner |
| --- | --- | --- | --- | --- |
| [Cluster 1] | [/blog/pillar-slug] | [count] | [date] | [name] |
| [Cluster 2] | [/blog/pillar-slug] | [count] | [date] | [name] |
| [Cluster 3] | [/blog/pillar-slug] | [count] | [date] | [name] |

## Cluster: [Head topic]

### Pillar page

- **Title:** [Title]
- **URL:** [/blog/slug]
- **Primary keyword:** [From /06-seo/KEYWORDS.md]
- **Target SERP feature:** [AI overview / Featured snippet / Organic top 3]
- **Word count target:** 2,500 to 4,500
- **Status:** [Planned / Drafting / Published / Refresh due]

### Spokes

1. **Title:** [Spoke title]
   - **URL:** [/blog/slug]
   - **Primary keyword:** [Term]
   - **Secondary keywords:** [Terms]
   - **Target reader:** [Persona name]
   - **Funnel stage:** [Awareness / Consideration / Decision]
   - **Word count target:** 1,000 to 2,000
   - **Internal links in:** [Pillar, 2 sibling spokes]
   - **Internal links out:** [Pillar, 1 service page, 1 proof asset]
   - **Status:** [Status]
2. **Title:** [Spoke 2]
   - [Same fields]
3. **Title:** [Spoke 3]
   - [Same fields]

### Link architecture rules

- Every spoke links up to the pillar in the first 200 words and again in the conclusion.
- Every spoke links to at least two sibling spokes, preferably in context not a "related posts" module.
- Every pillar page links down to all spokes in a single section near the middle of the page.
- Every cluster links laterally to at least one adjacent cluster so crawlers see the structure.

### Content gap analysis

- [Sub-topic not yet covered]
- [Question appearing in reviews that is not covered]
- [Question in the People Also Ask section of target keywords that is not yet answered]

## Cluster: [Head topic 2]

Repeat the structure.

## Cluster: [Head topic 3]

Repeat the structure.

## Content refresh cadence

- Every pillar page refreshed every 6 months.
- Every spoke refreshed every 12 months, sooner if traffic drops 25 percent or more month over month.
- Refresh checklist: update stats, re-verify claims, refresh screenshots, re-run keyword for the term, rewrite the intro if it still opens with "in today's..."

## Worked example: Cypress Coffee Co.

### Cluster: "Choosing a specialty coffee roaster"

**Pillar page:**

- Title: How to choose a specialty coffee roaster (2026 edition)
- URL: `/blog/choose-specialty-coffee-roaster`
- Primary keyword: "how to choose a specialty coffee roaster"
- Target SERP feature: Featured snippet + AI overview citation
- Word count: 3,400

**Spokes:**

1. Direct trade vs. fair trade, explained, `/blog/direct-trade-vs-fair-trade`
2. What a specialty coffee cupping session looks like, `/blog/specialty-coffee-cupping`
3. Eight questions to ask a roaster before you sign a wholesale contract, `/blog/wholesale-roaster-questions`
4. How long does a roasted bag of coffee stay fresh, `/blog/coffee-bag-freshness`
5. Single origin vs. blend, explained, `/blog/single-origin-vs-blend`
6. Understanding roast levels without the jargon, `/blog/roast-levels`
7. How a small roaster sets wholesale pricing, `/blog/wholesale-pricing`
8. The case for buying from a local roaster, `/blog/local-roaster-case`

**Internal link map:**

- Pillar links down to all 8 spokes in a "deep dives" section at the 60 percent mark.
- Spokes 1, 5, and 6 are linked in the pillar's "origin and style" section.
- Spokes 3 and 7 are linked in the pillar's "wholesale and pricing" section.
- Every spoke opens with a one-sentence definition that links up to the pillar.
- Spokes 3 and 7 link to each other. Spokes 1 and 5 link to each other.

**Content gaps:**

- "How does a small roaster price a one-off private-label project."
- "How to evaluate a roaster's green coffee sourcing."

## Feeding this asset to an AI agent

```text
Load /06-seo/TOPIC-CLUSTERS.md before proposing any new content.

Before writing:
1. Identify which cluster the piece belongs to.
2. Confirm the primary keyword is not already assigned to a sibling spoke.
3. Plan internal links: up to the pillar, across to two siblings, out to at least one service page or proof asset.
4. Check the content-gap list. Fill a gap if the topic overlaps.

Do not publish a piece that has no parent cluster. If the topic does not fit, propose a new cluster before writing.

Cite /06-seo/TOPIC-CLUSTERS.md in the content brief.
```

Reference paths: `/06-seo/TOPIC-CLUSTERS.md`, `/06-seo/KEYWORDS.md`, `/06-seo/GEO-AEO.md`, `/07-website/SITE-MAP.md`.
