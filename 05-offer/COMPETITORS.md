# Competitive Intelligence

Part of M10: The Marketing Foundation 10 by imFORZA.

## How to use this file

- **What goes in:** Your competitor map, a per-competitor breakdown, battle cards, and how-we-win notes.
- **How agents read it:** Agents load this file when writing comparison pages, sales emails, objection-handling content, and paid ad copy that targets competitor search terms.
- **Update cadence:** Refresh monthly. One teammate owns updates. Add new competitors the day a deal is lost to a name not on the list.

## AI-agent-ready checklist

- [ ] Machine-readable: one competitor per H2 with the same fields.
- [ ] Structured: map, per-competitor breakdown, battle cards, win-notes.
- [ ] Single source of truth: no alternate competitor grid on a salesperson's laptop.
- [ ] Versioned: last-updated date per competitor.
- [ ] Cite-able: agents cite `/05-offer/COMPETITORS.md` when writing competitor-aware content.

Last updated: [YYYY-MM-DD]

---

## Competitor map

| Competitor | Category | Overlap | Threat level | Last updated |
| --- | --- | --- | --- | --- |
| [Competitor A] | Direct | High | High | [YYYY-MM-DD] |
| [Competitor B] | Direct | Medium | Medium | [YYYY-MM-DD] |
| [Competitor C] | Indirect | Medium | Low | [YYYY-MM-DD] |
| [Competitor D] | Substitute | Low | Low | [YYYY-MM-DD] |
| [In-house build] | Substitute | Full | High | [YYYY-MM-DD] |
| [Do nothing] | Substitute | Full | Medium | [YYYY-MM-DD] |

### Categories explained

- **Direct:** Same offer, same persona, same buying occasion.
- **Indirect:** Different offer that solves the same underlying job to be done.
- **Substitute:** The buyer's current workaround, including internal tools and doing nothing.

---

## Competitor: [Name]

**Category:** [Direct / Indirect / Substitute]
**URL:** [https://...]
**Headquarters:** [City, Country]
**Size signal:** [Employees, funding stage, known revenue band]
**Positioning in their own words:** "[Pull their hero headline]"

### Offer

- [What they sell, in their language]
- [What they sell, translated into plain language]

### Pricing

- [Published price or range, with date]
- [Packaging tiers]
- [Payment terms]

### Strengths

- [Strength 1]
- [Strength 2]
- [Strength 3]

### Weaknesses

- [Weakness 1]
- [Weakness 2]
- [Weakness 3]

### Public messaging themes

- [Theme, with a sample headline]
- [Theme, with a sample headline]
- [Theme, with a sample headline]

### Typical customer

- [Persona they win most]
- [Industries]
- [Geography]

### How we win against them

- [Specific differentiator]
- [Specific proof point]
- [Specific scenario we win]

### How we lose to them

- [Specific scenario]
- [Specific feature gap]
- [Specific price sensitivity]

### Last updated

[YYYY-MM-DD], [Author]

---

## Battle cards

### Battle card: [Competitor A]

**When the buyer says "We are also talking to [Competitor A]":**

1. Acknowledge. "We respect their work. A lot of our customers evaluated both of us."
2. Ask. "What is drawing you to them, and what is making you pause."
3. Reframe. "Our offer is built for [specific persona or use case] where we consistently outperform."
4. Proof. "Here is a customer that switched from [Competitor A] to us and what changed."
5. Close. "Would it help to set up a call with that customer this week."

**Preferred proof artifact:** [/08-content/PROOF-CORPUS.md link to the right case study]

**Do not say:**

- Any variation of "they are bad."
- Any price-only argument.
- Any claim we cannot back with an artifact.

### Battle card: [Competitor B]

Repeat the format above.

### Battle card: In-house build

**When the buyer says "We are thinking about building this in-house":**

1. Acknowledge. "That is a valid option. Most of our customers considered it first."
2. Ask. "Who on your team would own the build, and what else is on their plate this quarter."
3. Reframe. "The build is two to six months of opportunity cost. That is the real number to compare, not the monthly fee."
4. Proof. "Here is a customer that tried the build, got 60 percent through, then hired us. They shipped 90 days sooner."
5. Close. "If you want, we can scope the in-house effort honestly with you. If a build is the right move, we will say so."

### Battle card: Do nothing

**When the buyer says "We are not sure if now is the right time":**

1. Acknowledge. "Timing is real. Most good decisions happen slowly."
2. Ask. "What would need to be true in six months for you to say the wait cost you nothing."
3. Reframe. Quantify the cost of inaction. Use a number.
4. Proof. "Here is what another operator did while they waited."
5. Close. "If the timing is right in 60 days, we will still be here. If it is right today, here is the fastest path in."

## Worked example

### Competitor: "FullFunnel Agency"

**Category:** Direct
**URL:** example.com/fullfunnel (placeholder)
**Positioning:** "We run your entire funnel. Top of funnel to closed revenue."

**Offer**

- Retainer agency starting at $12K per month.
- Services include paid media, content, email, and reporting.

**Strengths**

- Deep paid-media benches.
- Multi-channel coverage.
- Good reporting dashboards.

**Weaknesses**

- Cookie-cutter content engine.
- No permanent asset handover. Customer owns nothing at the end.
- Minimum engagement 12 months.

**How we win**

- We sell a foundation the customer owns.
- We deliver in 60 days, not 12 months.
- Our engagement compounds. Theirs resets when the contract ends.

**How we lose**

- Buyers who want a fully outsourced run-the-marketing partner.
- Buyers who will not write anything themselves.

## Feeding this asset to an AI agent

```text
Load /05-offer/COMPETITORS.md before writing any comparison page, competitor-targeted ad, or objection-handling asset.

When writing:
1. Name the competitor only if the piece is explicitly a comparison page. Otherwise speak to the category.
2. Use only claims supported by artifacts in this file.
3. Match the battle card script when the piece is a direct response to a competitor mention.
4. Flag the content for human review if it includes a pricing claim about a named competitor.

Cite /05-offer/COMPETITORS.md in any competitor-aware content.
```

Reference paths: `/05-offer/COMPETITORS.md`, `/05-offer/OFFER.md`, `/05-offer/WIN-LOSS.md`.
