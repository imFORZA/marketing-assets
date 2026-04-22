# Campaign Recipe: Lead Nurture Sequence

A 5-to-7-touch sequence that moves a new lead from "I downloaded your thing" to "book a call." The goal is not to sell in email. It is to earn enough trust and context that the lead books the call ready to buy.

Part of M10: The Marketing Foundation 10 by imFORZA.

---

## When to use this recipe

- New lead downloaded a lead magnet, signed up for a newsletter, or booked a low-intent webinar.
- Lead has not yet engaged with sales.
- Lead matches your ICP (if they don't, route them to a different list).

## Inputs required

| Asset | What you pull |
|---|---|
| `/01-icp/ICP.md` | Primary persona, top 3 pain points, top 3 objections. |
| `/02-voice/VOICE.md` | Voice attributes + tone modulation for email. |
| `/02-voice/TERMINOLOGY.md` | Preferred and banned terms. |
| `/05-offer/OFFER.md` | The offer we eventually pitch. |
| `/08-content/PROOF-CORPUS.md` | Testimonials, case studies, screenshots to cite. |
| `/09-data/TOP-PERFORMERS.md` | Best-performing past emails to pattern-match on. |

## Sequence structure

| # | Day | Subject line pattern | Body purpose | Primary CTA |
|---|---|---|---|---|
| 1 | Day 0 | Deliver promise | Thank-you + asset delivery + expectation setting | Consume the asset |
| 2 | Day 2 | Name the problem | Identify the pain in customer's language | Reply with yes/no question |
| 3 | Day 5 | Show the shift | Case study or before/after story | Read the story |
| 4 | Day 9 | Answer the objection | Address top objection from ICP | Short FAQ reply |
| 5 | Day 14 | Soft invite | Describe the offer, frame as "if this sounds like you" | Book a call |
| 6 | Day 21 | Direct ask | Clear offer, clear ask, clear deadline or cap | Book a call |
| 7 | Day 30 | The close-out | "Not the right time? Here is what to do next" | Self-select out or in |

## Voice rules for this sequence

- Write like one person. Every email signed by a real human, not a company.
- Short paragraphs. 1-3 lines max.
- One CTA per email.
- No emojis in subject lines. Subject lines lead with specificity, not hype.
- Preheader text supports the subject, does not repeat it.

## Variables to swap per send

- `{{FIRST_NAME}}` (with fallback "there")
- `{{PRIMARY_PAIN}}` (from ICP)
- `{{OFFER_NAME}}`
- `{{PROOF_POINT}}` (pulled from PROOF-CORPUS.md)
- `{{CTA_LINK}}` (your Dub short link with UTM)

## Decision points

- After email 2: if reply is "no thanks", drop out of sequence, move to newsletter.
- After email 4: if opened 3 of 4 but no click, shorten email 5 (soft invite gets trimmed).
- After email 6: if clicked CTA but did not book, sales gets an alert to reach out.
- After email 7: if still no engagement, lead goes to cold list for quarterly re-engagement.

## Agent instructions

When an agent drafts emails in this sequence, it must:

1. Read `01-icp/ICP.md` first. Decide which persona we are writing to.
2. Read `02-voice/VOICE.md` and `02-voice/TERMINOLOGY.md` next. Apply.
3. Pull the specific proof point from `08-content/PROOF-CORPUS.md` by matching pain point to testimonial/case study tag.
4. Pattern-match against the top 3 performers in `09-data/TOP-PERFORMERS.md` that share the same ICP and stage.
5. Draft email. Include subject + 2 subject alternates + preheader + body + CTA + P.S.
6. Flag any claims that need human verification (numbers, customer names, outcome metrics).
7. Stop. Request human review before send.

## Success criteria

- Open rate >= 40% on emails 1-3.
- Click-through rate >= 8% on emails 3, 5, 6.
- Reply rate >= 2% across the sequence.
- Booked call rate >= 3% of sequence enrollments.

If metrics drop below these, do not rewrite more copy. Revisit the ICP first.

---

*Part of M10: The Marketing Foundation 10 by imFORZA.*
