# Campaign Recipe: SEO Sprint (90 Days)

A 90-day sprint to move one topic cluster from invisible to ranking. One pillar page, 6 to 10 cluster pages, a proof-and-citation pass, and a link-building push. Runs once per quarter against one priority cluster.

Part of M10: The Marketing Foundation 10 by imFORZA.

---

## When to use this recipe

- You have a topic cluster identified in `06-seo/TOPIC-CLUSTERS.md` that you want to own.
- The cluster has 3+ searches per month per keyword and at least 10 target keywords.
- You have the content calendar capacity to publish 6-10 pieces + 1 pillar refresh within the 90 days.

## Inputs required

| Asset | What you pull |
|---|---|
| `/01-icp/ICP.md` | Who we are writing for. Every piece must match the persona's intent. |
| `/02-voice/VOICE.md` | Voice rules. |
| `/06-seo/KEYWORDS.md` | Target keywords for the cluster. |
| `/06-seo/TOPIC-CLUSTERS.md` | Hub-and-spoke map for this cluster. |
| `/06-seo/GEO-AEO.md` | GEO and AEO tactics for AI search visibility. |
| `/07-website/SCHEMA.md` | Schema types per page. |
| `/08-content/CONTENT-LIBRARY.md` | Existing pieces that can be refreshed or cross-linked. |
| `/09-data/ANALYTICS.md` | Baseline performance metrics so we can measure lift. |

## Sprint structure

### Weeks 1-2: Foundation

- [ ] Audit existing content on the cluster topic. Mark each as refresh, merge, keep, or retire.
- [ ] Define the pillar page brief: title, target keywords, intent, structure, length, schema.
- [ ] Draft the keyword-to-URL map. Every piece in the cluster knows what it targets.
- [ ] Rewrite the pillar page. Ship it.

### Weeks 3-6: Cluster

- [ ] Publish 3-5 cluster pages in priority order (highest intent or most SERP opportunity first).
- [ ] Each piece links up to the pillar and across to 2-3 other cluster pieces.
- [ ] Add schema markup to every piece.
- [ ] Submit updated sitemap to Google Search Console.

### Weeks 7-9: Amplification

- [ ] Publish the remaining 2-5 cluster pieces.
- [ ] Publish 2-3 supporting pieces on Medium or LinkedIn with canonical back to primary pages.
- [ ] Answer 5-10 high-intent Quora questions on the topic with natural links back.
- [ ] Refresh any older related content that was marked "refresh" in the audit.

### Weeks 10-12: Proof + Iterate

- [ ] Pull performance data. Which pieces are ranking? Which are not?
- [ ] Update the 3 best-performing pieces with fresh stats, stronger internal links, and added FAQ sections.
- [ ] Update 3 underperforming pieces with the lessons from the winners.
- [ ] Log the outcomes in `06-seo/KEYWORDS.md` research log and `09-data/TOP-PERFORMERS.md`.

## Voice rules for this sprint

- Every piece answers a specific question a human would ask out loud.
- Lead the piece with the answer (AEO pattern). Elaborate underneath.
- FAQ section at the bottom with 4-8 atomic questions and answers.
- Definition blocks for any term that a buyer might search "what is X."

## Variables per piece

- `{{TARGET_KEYWORD}}`
- `{{INTENT}}` (info / commercial / transactional)
- `{{PERSONA}}`
- `{{WORD_COUNT_TARGET}}`
- `{{INTERNAL_LINKS}}` (list of 5-8 related URLs)
- `{{SCHEMA_TYPE}}`

## Agent instructions

When an agent drafts a piece in the SEO sprint:

1. Read `06-seo/KEYWORDS.md` to confirm target keyword and intent.
2. Read `06-seo/TOPIC-CLUSTERS.md` to identify the pillar and sibling cluster pages.
3. Read `06-seo/GEO-AEO.md` to decide which AEO structures (definition, FAQ, HowTo, etc.) to include.
4. Read `07-website/SCHEMA.md` for the correct JSON-LD markup.
5. Read `01-icp/ICP.md` and `02-voice/VOICE.md` for persona and voice.
6. Draft the piece: definition block, body, internal links (5-8), FAQ (4-8), schema markup.
7. Stop. Request human review before publish.

## Success criteria

- Pillar page ranks top 20 for primary keyword within 60 days, top 10 within 90.
- Cluster pages cumulatively drive 500-2000 sessions/month of new organic traffic within 90 days.
- Featured snippet won on 1-3 cluster keywords.
- At least 2 AI Overview citations for cluster terms (monitor in Perplexity, ChatGPT search, Gemini, Google AI).
- Newsletter signups from organic traffic on the cluster up 20-50%.

If the sprint underperforms, do not sprint again on the same cluster. Return to `06-seo/KEYWORDS.md` and re-examine the intent map. The wrong cluster can't be rescued by more content.

---

*Part of M10: The Marketing Foundation 10 by imFORZA.*
