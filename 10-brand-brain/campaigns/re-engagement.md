# Campaign Recipe: Re-Engagement

A 3-touch sequence to wake up dormant leads and contacts who have not engaged in 90+ days. The goal is to resurface value, confirm they still want to hear from you, and clean the list by removing the ones who don't.

Part of M10: The Marketing Foundation 10 by imFORZA.

---

## When to use this recipe

- Contact has not opened or clicked in 90+ days.
- Contact is still in your CRM or email list.
- Contact was previously engaged (don't run this on truly cold contacts who never opted in).

## Inputs required

| Asset | What you pull |
|---|---|
| `/01-icp/ICP.md` | Refresh on why this persona originally came to us. |
| `/02-voice/VOICE.md` | Voice rules. Re-engagement tends to be more direct and human. |
| `/05-offer/OFFER.md` | Current offer, which may be different from the one they originally signed up for. |
| `/08-content/CONTENT-LIBRARY.md` | Top flagship content they may have missed. |
| `/09-data/ANALYTICS.md` | Segmentation rules for "dormant" vs "active." |

## Sequence structure

| # | Day | Subject line pattern | Body purpose | Primary CTA |
|---|---|---|---|---|
| 1 | Day 0 | "Still want to hear from us?" | Honest acknowledgment + 1-line value offer | Click "yes, keep me" |
| 2 | Day 4 | "The last email I'll send" | Specific best piece of recent content | Read the content |
| 3 | Day 10 | "Unsubscribing you in 5 days" | Clear sunset notice | Click to stay |

## Voice rules for this sequence

- Honest over clever. No "we miss you" schmaltz.
- Short. Every email under 120 words.
- Lead with respect for their inbox. No guilt-tripping.
- The "unsubscribing you in 5 days" email is polite and firm. Not passive-aggressive.

## Variables to swap per send

- `{{FIRST_NAME}}`
- `{{DAYS_INACTIVE}}` (calculated, usually 90+)
- `{{BEST_RECENT_CONTENT_URL}}` (flagship piece from CONTENT-LIBRARY.md)
- `{{OFFER_NAME}}` (current, not historical)

## Decision points

- After email 1: if they click "keep me," reset engagement timer, back to active list.
- After email 2: if they open but don't click, send email 3.
- After email 3: if still no engagement within 5 days, remove from active list. Optional: move to quarterly "ultra-cold" list for annual check-in.

## Agent instructions

When an agent drafts re-engagement emails:

1. Read `01-icp/ICP.md`. Confirm the persona is still a fit. If the persona has changed (e.g., we serve different companies now), update the re-engagement copy accordingly.
2. Read `02-voice/VOICE.md`. Re-engagement sits slightly outside the default tone: slightly more direct, slightly more self-aware.
3. Pull the single best flagship piece from `08-content/CONTENT-LIBRARY.md` that was published in the last 90 days.
4. Draft all 3 emails at once so the sequence is coherent.
5. Flag any claims that need human verification.
6. Stop. Request human review before enabling the sequence.

## Success criteria

- 15-20% of dormant list re-engages (opens + clicks email 1 or 2).
- 5-8% clicks the offer CTA in emails 2 or 3.
- List hygiene improves: send-time deliverability lifts 10-20% after removing true dormant contacts.

If re-engagement drops below 10%, the problem is likely upstream: either the original list was low-quality, or the content they receive when active is not strong enough.

---

*Part of M10: The Marketing Foundation 10 by imFORZA.*
