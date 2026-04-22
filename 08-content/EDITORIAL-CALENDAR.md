# Editorial Calendar

Part of M10: The Marketing Foundation 10 by imFORZA.

## How to use this file

- **What goes in:** The 90-day rolling plan for every channel. Week number, date, channel, content type, topic, persona, owner, status.
- **How agents read it:** Agents check the calendar before proposing or drafting new content, so work aligns with the sequence and no channel is over- or under-fed.
- **Update cadence:** Update weekly. Plan 90 days out. Revisit assignments every Monday.

## AI-agent-ready checklist

- [ ] Machine-readable: one row per planned asset.
- [ ] Structured: separate sections per channel, a master rolling plan at the top.
- [ ] Single source of truth.
- [ ] Versioned.
- [ ] Cite-able: agents cite `/08-content/EDITORIAL-CALENDAR.md` when scheduling.

Last updated: [YYYY-MM-DD]

---

## Cadence, by channel

Set cadence once. Protect it.

| Channel | Cadence | Format | Owner | Review step |
| --- | --- | --- | --- | --- |
| Blog | 1 pillar per quarter plus 4 to 6 spokes per quarter | Long-form written | Content lead | Editor + SEO lead |
| Newsletter | 1 per week | Short editorial plus roundup | Newsletter lead | Founder review |
| LinkedIn company page | 3 per week | Post + image or video | Social lead | Founder glance |
| LinkedIn founder | 3 per week | Founder voice | Founder | Self |
| X / Twitter | 1 thread per week, daily short posts | Short text | Social lead | Self |
| YouTube | 1 per month | 5 to 12 minute video | Video lead | Founder review |
| Podcast | 1 per week, 2 solo + 2 interview per month | Audio | Host | Editor review |
| Quora | 2 per week on target questions | Answer | Content lead | Editor review |
| Email nurture | Always-on automation plus quarterly refresh | Email | Lifecycle lead | Founder review on quarterly refresh |
| Ads | Continuous, weekly variant test | Short copy + creative | Paid lead | Analytics check |

## Rolling 90-day plan

| Week | Date starting | Channel | Content type | Topic | Persona | Owner | Status |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | [YYYY-MM-DD] | Blog | Pillar | [Topic] | [Persona] | [Owner] | [Draft] |
| 1 | [YYYY-MM-DD] | LinkedIn founder | Post x3 | [Theme] | [Persona] | [Founder] | [Scheduled] |
| 1 | [YYYY-MM-DD] | Newsletter | Weekly | [Topic] | [Persona] | [Owner] | [Draft] |
| 2 | [YYYY-MM-DD] | Blog | Spoke | [Topic] | [Persona] | [Owner] | [Brief] |
| 2 | [YYYY-MM-DD] | LinkedIn company | Post x3 | [Theme] | [Persona] | [Owner] | [Scheduled] |
| 2 | [YYYY-MM-DD] | Podcast | Solo | [Topic] | [Persona] | [Host] | [Recorded] |
| 3 | [YYYY-MM-DD] | Blog | Spoke | [Topic] | [Persona] | [Owner] | [Brief] |
| 3 | [YYYY-MM-DD] | YouTube | Video | [Topic] | [Persona] | [Video lead] | [Shot] |
| 4 | [YYYY-MM-DD] | Blog | Spoke | [Topic] | [Persona] | [Owner] | [Brief] |
| 4 | [YYYY-MM-DD] | Email nurture | Refresh | [Sequence] | [Persona] | [Lifecycle lead] | [Drafting] |

Repeat rows for weeks 5 through 13.

## Channel-by-channel detail

### Blog

Rules:

- One pillar per quarter, 2,500 to 4,500 words.
- Four to six spokes per quarter, 1,000 to 2,000 words each.
- Every piece has a briefed keyword from `/06-seo/KEYWORDS.md`.
- Every piece links up to its pillar and across to two siblings.

### Newsletter

Rules:

- One issue per week, same day of the week.
- 400 to 700 words.
- Structured as: one field note, one link to a proof asset, one CTA to the next primary conversion.
- Sent from a named human, not `no-reply`.

### LinkedIn

Rules:

- Company and founder alternate days so the feed does not collide.
- Founder voice is 70 percent field notes, 20 percent opinion, 10 percent proof.
- Company voice is 60 percent educational, 30 percent culture and hiring, 10 percent proof.

### X / Twitter

Rules:

- One thread per week, 8 to 12 tweets.
- Short posts 2 to 4 times per day.
- Reposts or quote-tweets limited to 10 percent of volume.

### YouTube

Rules:

- One video per month, 5 to 12 minutes.
- Title, thumbnail, and description briefed from the same keyword research as the blog pillar.
- Transcribed and republished as a long-form post.

### Podcast

Rules:

- One episode per week.
- Alternate solo episodes (founder voice) with guest episodes.
- Every episode has show notes published on the blog and a short LinkedIn post with the hook.

### Quora

Rules:

- Two answers per week on questions that map to primary or secondary keywords.
- Each answer is a unique version of an existing blog post, not a copy-paste.
- Answers cite the original post on the site with a link, used sparingly and within Quora guidelines.

### Email nurture

Rules:

- The welcome sequence, re-engagement sequence, and product nurture sequence live in `/10-brand-brain/campaigns/`.
- Refresh quarterly. Test subject lines always. Rewrite bodies every 6 to 12 months.

### Paid ads

Rules:

- One new variant per week per active campaign.
- Pause any ad that burns 2x its target cost-per-lead without converting.
- Creative pulls from `/03-visual/` and copy from `/10-brand-brain/templates/social-post.md`.

## Assignment and review flow

- Drafts due 5 business days before publish.
- Editor review due 3 business days before publish.
- Final approval due 1 business day before publish.
- Publish day is also the day the analytics tag is verified live.

## Worked example: one week at Northstar Home Services

- Monday: Newsletter sends at 7:00 a.m. Field note from the dispatch floor.
- Monday: LinkedIn founder posts a short story about last week's commercial job.
- Tuesday: Blog post publishes (spoke in the "commercial HVAC Austin" cluster).
- Wednesday: LinkedIn company page posts a photo from the shop floor.
- Thursday: Podcast episode drops, solo, 20 minutes, on "why commercial HVAC RFPs go sideways."
- Friday: Quora answer published on "how do I choose an Austin commercial HVAC contractor."
- Saturday and Sunday: Dark days. No posts.

## Feeding this asset to an AI agent

```text
Load /08-content/EDITORIAL-CALENDAR.md before drafting, scheduling, or publishing any content.

Workflow:
1. Confirm the slot is in the rolling 90-day plan.
2. Confirm the cluster and primary keyword.
3. Confirm the persona and the stage.
4. Draft with the right voice from /02-voice/VOICE.md.
5. Pull proof from /08-content/PROOF-CORPUS.md.
6. Flag the piece for editor review per the Review Flow section.

If a slot is empty, propose an asset that fits a starved channel or a stalled cluster.
```

Reference paths: `/08-content/EDITORIAL-CALENDAR.md`, `/08-content/CONTENT-LIBRARY.md`, `/06-seo/TOPIC-CLUSTERS.md`.
