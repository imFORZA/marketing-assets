# Top Performers Library

Part of M10: The Marketing Foundation 10 by imFORZA.

## How to use this file

- **What goes in:** The assets that outperform. Specific pieces of content, emails, ads, videos, and pages with the numbers that earned them a spot. This file is training fodder for any agent that writes new content.
- **How agents read it:** Agents study the winners before drafting. They pattern-match on what works for this audience, not what works in a generic content course.
- **Update cadence:** Refresh monthly. Remove pieces that fall out of the top quartile. Add new winners.

## AI-agent-ready checklist

- [ ] Machine-readable: one entry per winner with predictable fields.
- [ ] Structured: sections by asset type.
- [ ] Single source of truth.
- [ ] Versioned.
- [ ] Cite-able: agents cite `/09-data/TOP-PERFORMERS.md` when writing from a proven pattern.

Last updated: [YYYY-MM-DD]

---

## How we pick winners

A winner is an asset that meets two or more of the following:

- Top 10 percent of its channel for engagement or conversion over the last 90 days.
- Attributed to at least one booked call or MQO.
- Cited by at least one buyer on a sales call as "the piece that made me book."
- Cited in an AI overview or answer engine output.

## Top blog posts

| Title | URL | Channel | Window | Primary metric | Why it works |
| --- | --- | --- | --- | --- | --- |
| [Title] | [/blog/slug] | Organic search | Q1 2026 | [Sessions] | [Short explanation] |
| [Title] | [/blog/slug] | Organic search | Q1 2026 | [Sessions] | [Explanation] |

### Pattern notes

- [Pattern 1, with example]
- [Pattern 2, with example]
- [Pattern 3, with example]

## Top newsletters

| Subject line | Date | Open rate | Click rate | Reply rate | Why it works |
| --- | --- | --- | --- | --- | --- |
| [Subject] | [YYYY-MM-DD] | [%] | [%] | [%] | [Reason] |
| [Subject] | [YYYY-MM-DD] | [%] | [%] | [%] | [Reason] |

### Pattern notes

- [Pattern 1]
- [Pattern 2]

## Top LinkedIn posts

| Hook | URL | Date | Reach | Engagement rate | Conversion attributed |
| --- | --- | --- | --- | --- | --- |
| [First line] | [URL] | [Date] | [N] | [%] | [Calls booked] |
| [First line] | [URL] | [Date] | [N] | [%] | [Calls booked] |

## Top X / Twitter threads

| First tweet | URL | Date | Impressions | Bookmarks | Follower lift |
| --- | --- | --- | --- | --- | --- |
| [First tweet] | [URL] | [Date] | [N] | [N] | [N] |

## Top videos

| Title | Platform | URL | Watch time | Retention at 1 min | Conversions |
| --- | --- | --- | --- | --- | --- |
| [Title] | [Platform] | [URL] | [Seconds] | [%] | [N] |

## Top ads

| Creative | Channel | URL | Spend | CAC | Conversions | Why it works |
| --- | --- | --- | --- | --- | --- | --- |
| [Variant] | [LinkedIn / Google] | [URL] | [$] | [$] | [N] | [Reason] |

## Top case studies

| Customer | URL | Views | Time on page | Conversions | Sales team usage |
| --- | --- | --- | --- | --- | --- |
| [Customer] | [/case-studies/slug] | [N] | [mm:ss] | [N] | [How often sales uses it] |

## Top landing pages

| Page | URL | Visits | Conversion rate | Primary CTA |
| --- | --- | --- | --- | --- |
| [Page] | [URL] | [N] | [%] | [CTA] |

## Patterns across winners

After 30 days of pattern logging, fill this in. Revisit every 90 days.

### Hooks that work

- [Hook 1]
- [Hook 2]
- [Hook 3]

### Structures that work

- [Structure 1]
- [Structure 2]

### Proof points that close

- [Proof 1]
- [Proof 2]

### CTAs that convert

- [CTA 1]
- [CTA 2]

## Worked example

### Northstar Home Services: top-performing blog post

- **Title:** "How to vet an Austin commercial HVAC contractor before you sign."
- **URL:** `/blog/austin-commercial-hvac-vetting`
- **Window:** January to March 2026.
- **Primary metrics:** 4,200 organic sessions, 12 booked calls attributed, featured snippet captured, cited in Google AI Overview.
- **Why it works:**
  - H1 names the exact buyer query.
  - 40 to 60 word definition block inside the first 300 words.
  - Checklist in a table that other sites do not publish.
  - Signed testimonial pull quote mid-article from a named operator.
  - FAQ block wired to `FAQPage` schema.
- **Pattern to reuse:** Local buyer query + named checklist + visible FAQ.

## Feeding this asset to an AI agent

```text
Load /09-data/TOP-PERFORMERS.md before writing a new piece for the same channel.

Workflow:
1. Pick the two or three closest winners from this file.
2. Note the hook pattern, the structure, the proof pattern, and the CTA.
3. Write a new piece that matches the pattern without copying the content.
4. After publish, add the new piece to /08-content/CONTENT-LIBRARY.md and flag it for monthly review. If it enters the top 10 percent, promote it into this file.

Cite /09-data/TOP-PERFORMERS.md in the brief when you borrow a pattern.
```

Reference paths: `/09-data/TOP-PERFORMERS.md`, `/09-data/ANALYTICS.md`, `/08-content/CONTENT-LIBRARY.md`, `/10-brand-brain/prompts/`.
