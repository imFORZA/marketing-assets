# Email Playbook

Part of M10: The Marketing Foundation 10 by imFORZA.

## Purpose

Email is the one channel you own. Deliverability is our competitive advantage. We treat every send as a handwritten note to a named person and never a broadcast.

## Format rules

- **Sender:** Named human, first and last name, company email address. No `no-reply`.
- **Subject line:** Under 45 characters. No emojis. Sentence case.
- **Preheader:** Under 85 characters. Extends the subject, not repeats it.
- **Body length:** 60 to 120 words for sales email. 200 to 400 words for newsletter. 400 to 700 for a deeper editorial.
- **Tone:** One person to one person. Even when sending to 10,000.
- **Links:** One primary CTA. One optional secondary link. Nothing else.
- **HTML:** Minimal. Use dark text on light background. Brand color used sparingly.
- **Images:** Optional. One image maximum in nurture and sales emails. Alt text required.

## Cadence

| Stream | Cadence | Owner |
| --- | --- | --- |
| Welcome sequence | Triggered on subscribe, 4 emails over 14 days | Lifecycle |
| Weekly newsletter | 1 per week, same day, same time | Newsletter lead |
| Monthly founder letter | 1 per month | Founder |
| Re-engagement | Triggered on 60 days no opens | Lifecycle |
| Post-sale nurture | Triggered on close-won | Success |
| Transactional | Triggered, as needed | Engineering |

Keep marketing stream frequency predictable. If you must deviate, warn the list a week ahead.

## Subject line patterns

- Direct question: "what would you do differently on a $24K audit?"
- Specific number: "47 booked calls in 60 days (single channel)"
- Personal: "a note from vinny, tuesday morning"
- Field note: "what a dispatcher said to me yesterday"
- Value-first: "the 10-file starter for your AI assistant"

## Subject line patterns to avoid

- "Newsletter #47" or any indexed number.
- ALL CAPS or too many exclamation points.
- "RE:" or "FWD:" fakes.
- "You won't believe..."

## Body shape for each stream

### Welcome sequence

Email 1 (day 0): Welcome, set expectations, deliver the promised asset.
Email 2 (day 2): One specific lesson or story tied to the asset.
Email 3 (day 5): Invitation to reply with a question. Zero pitch.
Email 4 (day 14): Low-pressure CTA to the primary conversion page.

### Weekly newsletter

- One short field note or lesson (300 to 500 words).
- One link to a piece of this week's proof (case study, quote, or screenshot).
- One CTA to the primary conversion path.
- Sent Mondays or Fridays, the same day every week.

### Monthly founder letter

- 400 to 700 words.
- A reflection, a strategy idea, or a contrarian stance the founder is willing to defend.
- No CTA unless it is an invitation ("if you are working on this, reply").

### Re-engagement

- Email 1: "Still want this?" Acknowledge the gap. Invite a reply.
- Email 2: Deliver a small piece of value with no ask.
- Email 3: Final removal notice.

### Post-sale nurture

- Onboarding steps.
- Educational depth about the product or service they bought.
- Asks for feedback and reviews at milestone dates.
- Occasional upsell email only after a value milestone is met.

### Transactional

- Functional, clean.
- No marketing copy.
- Reinforces brand voice in microcopy.

## Deliverability rules

- Warm IPs gradually when moving providers.
- Respect unsubscribe within minutes, not days.
- Clean the list every quarter. Remove hard bounces and 90-day inactives.
- Never buy a list.
- Never add someone without an explicit opt-in.
- Authenticate with SPF, DKIM, and DMARC on the sending domain.

## Segmentation

Segment on a handful of stable traits. Do not over-engineer.

- Stage (subscriber, MQL, customer, churned).
- Industry (if you serve multiple verticals).
- Role (founder, ops, marketing).
- Engagement (active, inactive, re-engaged).

## Accessibility

- Use real text, not images of text.
- Minimum body font size 16 px.
- Link text is descriptive, never "click here."
- Color contrast passes WCAG 2.2 AA.

## Tracking

- UTM set on every CTA link per `/09-data/TRACKING-PLAN.md`.
- Log conversions (`call_booked`, `lead_magnet_download`) back to the originating email.
- Track replies as a first-class metric for sales emails.

## Banned patterns

- "Quick favor"
- "Just circling back"
- "I know you are busy, but..."
- "Hope this finds you well"
- "Unfortunately"
- Multi-paragraph apology before a request
- Three or more links in a single email
- Fake urgency ("last chance," "closing tonight") that is not real

## Example newsletter

```
Subject: a 47-lead month, dissected

Hi [first name],

Last month Northstar Home Services, a 45-person HVAC company in Austin, booked 47 organic leads from their website. One month earlier they booked 12.

Nothing changed in their ads. Nothing changed in their CRM.

The only thing that changed was their foundation.

Here is what we did.

1. We rewrote their ICP. Every service page now speaks to a named operator, not a generic "homeowner."
2. We wrote down their voice. Every blog post now sounds like Ray on a service call, not like a brochure.
3. We built their topic cluster. The pillar page on residential HVAC in Austin now carries 8 spokes that link back.
4. We wired schema on every page. Google's AI Overview now cites them for "best Austin HVAC contractor."

If your foundation is not written down, your AI tools are guessing. Your buyers can tell.

Reply if you want the exact 10-asset template we started with.

Vinny
Founder, imFORZA
```

## Feeding this asset to an AI agent

```text
Load /10-brand-brain/playbooks/email.md, /10-brand-brain/templates/email-nurture.md, /02-voice/VOICE.md, /01-icp/ICP.md, and /08-content/PROOF-CORPUS.md.

Draft the email per the stream's body shape. Write 3 subject line options. Run the pre-send checklist from the template. Return the email ready to schedule.
```

Reference paths: `/10-brand-brain/playbooks/email.md`, `/10-brand-brain/templates/email-nurture.md`, `/02-voice/VOICE.md`, `/09-data/TRACKING-PLAN.md`.
