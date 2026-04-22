# Email Nurture Template

Part of M10: The Marketing Foundation 10 by imFORZA.

A fill-in-the-blank template for a single email inside a nurture sequence. Copy, fill in every `{{VARIABLE}}`, and pass through a human editor before scheduling.

## How agents use this template

1. Load `/01-icp/ICP.md` to identify `{{ICP_NAME}}` and the pain points you will speak to.
2. Load `/02-voice/VOICE.md` for sentence rules.
3. Load `/05-offer/OFFER.md` for `{{OFFER_NAME}}` and the primary promise.
4. Load `/08-content/PROOF-CORPUS.md` to pick `{{PROOF_POINT}}`.
5. Load `/10-brand-brain/playbooks/email.md` for the channel rules.

## Variables

| Variable | Source | Example |
| --- | --- | --- |
| `{{ICP_NAME}}` | `/01-icp/ICP.md` primary persona | "Brenda Alvarez" |
| `{{ICP_ROLE}}` | `/01-icp/ICP.md` persona role | "Operations Director" |
| `{{PAIN_POINT}}` | `/01-icp/ICP.md` top pain | "Inconsistent lead volume" |
| `{{OFFER_NAME}}` | `/05-offer/OFFER.md` | "Marketing Foundation Audit" |
| `{{PROMISE}}` | `/05-offer/OFFER.md` | "Every AI tool gets better the day after we leave" |
| `{{PROOF_POINT}}` | `/08-content/PROOF-CORPUS.md` | "Northstar booked 22 calls in month one" |
| `{{CTA_LABEL}}` | `/07-website/SITE-MAP.md` conversion path | "Book a 30-minute audit" |
| `{{CTA_URL}}` | `/07-website/SITE-MAP.md` | "https://www.imforza.com/contact/" |
| `{{SENDER_NAME}}` | Person sending the email | "Vinny" |
| `{{SENDER_TITLE}}` | Sender's role | "Founder, imFORZA" |

---

## Subject line options

Generate three. Keep each under 45 characters. No emojis. No all caps.

1. `{{SUBJECT_A}}`
2. `{{SUBJECT_B}}`
3. `{{SUBJECT_C}}`

## Preheader

Under 85 characters. Expands on the subject line without repeating it.

`{{PREHEADER}}`

## Body

Hi `{{ICP_NAME}}`,

I will keep this short.

Most `{{ICP_ROLE}}`s I talk to tell me the same thing: `{{PAIN_POINT}}`. It is rarely a lack of tools. Usually it is that every new tool has to re-learn the brand from scratch.

That is the problem we built `{{OFFER_NAME}}` to solve. One foundation, written down once, loaded into every AI tool your team uses.

One example. `{{PROOF_POINT}}`

If any of that lands, `{{CTA_LABEL}}` at `{{CTA_URL}}`. It is 30 minutes. I will show you which of the ten foundation assets you already have and which you do not.

No pressure either way.

`{{SENDER_NAME}}`
`{{SENDER_TITLE}}`

---

## Compliance block

Include in the footer. Regenerate when legal guidance changes.

```
You are receiving this email because you subscribed on [event or page].
Unsubscribe: [Unsubscribe link]
[Company legal name], [Street address]
```

## Checklist before send

- [ ] Subject line under 45 characters.
- [ ] Preheader under 85 characters.
- [ ] Body under 150 words.
- [ ] Reading level grade 8 to 9.
- [ ] No em dashes, no "leverage," no "seamless."
- [ ] One CTA. One link.
- [ ] Proof point cited.
- [ ] UTMs on the CTA URL.
- [ ] Sender is a real named person.
- [ ] Human editor reviewed.

## Feeding this asset to an AI agent

```text
Load /10-brand-brain/templates/email-nurture.md.

Fill every {{VARIABLE}} with values sourced from the files named in the Variables table. Do not invent content. If a variable is missing from the source files, flag it.

Write the body. Keep it under 150 words. Run the pre-send checklist. Return the email ready to schedule.
```

Reference paths: `/10-brand-brain/templates/email-nurture.md`, `/10-brand-brain/playbooks/email.md`, `/01-icp/ICP.md`, `/05-offer/OFFER.md`, `/08-content/PROOF-CORPUS.md`.
