# Win-Loss Library

Part of M10: The Marketing Foundation 10 by imFORZA.

## How to use this file

- **What goes in:** A structured log of every closed deal (won and lost) with the reasons the buyer gave. Use this file to pattern-match and to sharpen offers, pricing, and objection handling.
- **How agents read it:** Agents load this file when drafting objection-handling content, nurture sequences for stalled deals, and internal sales coaching material.
- **Update cadence:** Add one entry within 14 days of every closed deal. Review quarterly.

## AI-agent-ready checklist

- [ ] Machine-readable: one deal per H2 with the same fields.
- [ ] Structured: won vs. lost clearly tagged.
- [ ] Single source of truth: no alternate win-loss doc in Gong or a CRM custom field.
- [ ] Versioned: review date at the top.
- [ ] Cite-able: agents cite `/05-offer/WIN-LOSS.md` in objection-aware drafts.

Last reviewed: [YYYY-MM-DD]

---

## How we run interviews

- Use the same five-question script below.
- Run the interview 14 to 30 days after close, so memory is fresh but emotion has cooled.
- Record with permission. Transcribe. Paste verbatim answers into the deal entry.
- Interviewer is someone not on the sales team. Customer is more honest.

### Five-question script

1. "Walk me through how you first heard about us."
2. "When did you start seriously comparing us to alternatives. Who else was on the list."
3. "What almost made you choose someone else or not move forward."
4. "What finally tipped you toward us (or away from us)."
5. "If we had asked you this 90 days ago, what would you have told us to do differently."

## Deal entry template

Use one entry per deal. Copy the template below.

---

## Deal: [Customer Name], [Won / Lost]

**Date of close:** [YYYY-MM-DD]
**ACV or deal size:** [$X]
**ICP match:** [Primary / Secondary / Out of ICP]
**Lead source:** [Inbound / Referral / Outbound / Partner]
**Sales cycle length:** [X days]
**Deal lead:** [Name]
**Interview date:** [YYYY-MM-DD]
**Interviewer:** [Name]

### Buyer role

- **Champion:** [Name, title]
- **Economic buyer:** [Name, title]
- **Skeptic:** [Name, title, if applicable]

### The problem they came to us with

- [Plain description]
- [Relevant trigger event]

### Alternatives they considered

- [Competitor A]
- [Competitor B]
- [In-house build]
- [Do nothing]

### What almost lost the deal

- [Verbatim quote or paraphrase]
- [Verbatim quote or paraphrase]

### What won (or lost) the deal

- [Verbatim quote or paraphrase]
- [Verbatim quote or paraphrase]

### Objections that came up

- [Objection 1]
- [Objection 2]
- [Objection 3]

### Proof points that closed it (for Wins)

- [Proof point]
- [Proof point]

### Reasons for loss (for Losses)

- [Reason in buyer's words]
- [Reason in buyer's words]

### Lessons and changes

- [What we will change in our offer, pricing, or messaging]
- [Who owns the change]
- [When it will ship]

### Tags

- [ICP-match, Industry, Deal size bucket, Source, Stage where risk peaked]

---

## Aggregated patterns

Once you have 10 entries, fill in this summary. Review every quarter.

### Top three reasons we win

1. [Reason, with frequency]
2. [Reason, with frequency]
3. [Reason, with frequency]

### Top three reasons we lose

1. [Reason, with frequency]
2. [Reason, with frequency]
3. [Reason, with frequency]

### Common objections

| Objection | Frequency | Best rebuttal | Proof point |
| --- | --- | --- | --- |
| [Too expensive] | [X of Y deals] | [Short rebuttal] | [Proof ref] |
| [Now is not right] | [X of Y deals] | [Short rebuttal] | [Proof ref] |
| [Build in-house] | [X of Y deals] | [Short rebuttal] | [Proof ref] |

### Channels that deliver the best-fit ICP deals

- [Channel, with conversion rate]
- [Channel, with conversion rate]

### Deal sizes by source

- [Source]: [Average deal size]
- [Source]: [Average deal size]

## Worked example

### Deal: Northstar Home Services, Won

**Date of close:** 2026-01-20
**ACV:** $24,000
**ICP match:** Primary
**Lead source:** Referral from a peer home-services owner.
**Sales cycle:** 42 days.
**Deal lead:** Vinny La Barbera.

**Champion:** Brenda Alvarez, Operations Director.
**Economic buyer:** Ray Alvarez, Owner.
**Skeptic:** Ray's brother, Service Manager.

**The problem:** Lost a $120K commercial account to a competitor that ranked first for "Austin commercial HVAC contractor."

**Alternatives:** One incumbent agency, one cheaper freelance SEO shop, in-house build with a part-time contractor.

**What almost lost it:** Ray's brother had been burned twice before. He pushed hard on the "how is this different" question in the third call.

**What won it:** We offered a 60-day audit with a fixed scope and a 30-day exit clause. The brother said "we can try that without it hurting if we do not like them."

**Objections:** Price, skepticism about agencies, integration concerns with ServiceTitan.

**Proof points that closed it:** Reference call with a peer home-services owner, a written scope document, transparent pricing page, and a walkthrough of a previous audit deliverable.

**Lessons and changes:** Add a peer-reference step earlier in the sales cycle. Ship a one-pager called "How a 60-day audit works" so the skeptic has something to read before the third call.

**Tags:** Primary-ICP, Home services, $20K-$50K, Referral, Proof stage.

## Feeding this asset to an AI agent

```text
Load /05-offer/WIN-LOSS.md when writing objection-handling content, re-engagement sequences, or sales enablement material.

When drafting:
1. Use actual quotes from won and lost deals.
2. Match the objection to the highest-frequency pattern in this file.
3. Pair every rebuttal with a specific proof point.
4. For loss-recovery content, reference the pattern of losses, not a single deal.

Do not publish any content that names a lost deal's customer without written permission.

Cite /05-offer/WIN-LOSS.md in every draft.
```

Reference paths: `/05-offer/WIN-LOSS.md`, `/05-offer/OFFER.md`, `/05-offer/COMPETITORS.md`.
