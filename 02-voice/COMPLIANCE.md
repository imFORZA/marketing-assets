# Compliance and Claim Guardrails

Part of M10: The Marketing Foundation 10 by imFORZA.

This file is a starting point, not legal advice. Run it past your attorney before you publish anything inside a regulated industry.

## How to use this file

- **What goes in:** Rules about what any agent, writer, or marketer can and cannot claim on behalf of the business. Required disclaimers. Flags that trigger a legal review.
- **How agents read it:** Agents load this file before publishing customer-facing content. Any claim that matches a flagged pattern is held for human review.
- **Update cadence:** Review twice per year and after any regulatory change in your industry.

## AI-agent-ready checklist

- [ ] Machine-readable: rules are written as short if-then statements.
- [ ] Structured: one category per H2, one rule per bullet.
- [ ] Single source of truth: the only compliance doc referenced by marketing and sales.
- [ ] Versioned: last-updated and last-reviewed-by-legal dates at the top.
- [ ] Cite-able: agents flag `/02-voice/COMPLIANCE.md` when holding content for review.

Last updated: [YYYY-MM-DD]
Last reviewed by counsel: [YYYY-MM-DD, name of counsel]

---

## Claims you can make

These are claims your business can defend with written evidence.

- Performance claims backed by a named customer with written permission. Example: "Northstar Home Services went from 12 organic leads per month to 47 in 8 weeks."
- Category claims that describe what you do, not what you are. Example: "We publish AI-ready marketing systems for small and growing businesses."
- Process claims that describe how you work. Example: "Every engagement starts with a 60-day asset audit."
- Certification claims if you hold the certification. Example: "We are a HubSpot Solutions Partner."

## Claims you cannot make

Unless counsel has approved specific language.

- Superlatives without proof. No "best," "number one," "world's leading," "top-rated."
- Medical, legal, financial, or investment outcomes framed as advice.
- Earnings or income guarantees of any kind.
- Comparative claims about a named competitor without a side-by-side fact basis.
- Personal endorsements from a public figure without written permission.
- Guarantees that are not contractually backed by the company's own agreements.

## Required disclaimers

Any claim that matches one of these triggers needs an adjacent disclaimer.

| Trigger | Required disclaimer |
| --- | --- |
| Performance statistics from a single customer | "Results shown are from a single customer. Your results will vary based on your market, assets, and execution." |
| Industry benchmark | "Benchmarks reflect published third-party research from [source], [year]. Linked at [URL]." |
| Forward-looking statement | "Forward-looking statements reflect current expectations and are not guarantees of future results." |
| Paid partnership or affiliate relationship | "This piece mentions [partner]. [Company name] has a commercial relationship with [partner]." |
| Customer logo used on the site | Use of the logo must be covered by a written Logo Use Clause in the customer's MSA or a separate consent form. |

## Legal-review triggers

Hold the content for human and counsel review if any of the following appear.

- A number attached to a customer's revenue, profit, or valuation.
- A named individual's likeness, name, or quote outside of an already-signed consent.
- Any health outcome claim.
- Any investment return claim.
- Any claim about a named competitor.
- Any statement about regulatory compliance ("HIPAA compliant," "GDPR compliant," "SOC 2") that is not backed by a current attestation.
- Any endorsement from a government agency.
- Any claim about job creation, hiring, or employment outcomes attributable to your product.

## Regulated industries

Generic starter guidance. Run it past your attorney for your specific vertical.

### Healthcare

- No diagnosis or treatment claims.
- No patient stories without HIPAA-compliant written authorization.
- Avoid conveying that you are offering medical advice.
- Any AI-written content that mentions a condition, treatment, drug, or outcome must be reviewed by a human subject-matter expert before publication.

### Legal services

- No guarantees of case outcomes.
- Follow the bar rules in every jurisdiction where you advertise.
- AI-written legal content must include a clear disclaimer that it is not legal advice.
- Testimonials may require a separate disclosure per bar rules.

### Financial services

- No earnings, return, or yield guarantees.
- Every forward-looking statement requires a standard safe-harbor disclaimer.
- SEC-regulated or FINRA-regulated entities must have counsel approve every publicly posted piece of content.
- AI-written content must be archived per the firm's record-keeping policy.

### Real estate and mortgage

- Every listing claim follows fair-housing rules.
- No implied steering of buyers by protected class.
- Lending content follows Truth in Lending and RESPA.
- Market statistics require a source and date.

### Home services and trades

- Avoid unverifiable "licensed and insured" claims. If the claim is made, list the license number.
- Avoid "before and after" photos without written customer consent.
- Safety and energy-efficiency claims require a cited source.

## AI-disclosure policy

Decide once and apply everywhere.

- **Do we disclose when AI has assisted with content?** [Yes / No / In certain contexts]
- **Where does the disclosure appear?** [Footer, end of article, contextual label]
- **What is the exact wording?** [Draft the phrase once and reuse it]

Default suggested wording:

> This piece was drafted with AI assistance, reviewed and edited by a human on the [Company] team. Source data and quotes are verified.

## Data, privacy, and consent

- Every form collects only the data needed for the stated purpose.
- Every form links to the Privacy Policy and Terms of Service.
- Every marketing email complies with CAN-SPAM, CASL, and GDPR per the recipient's jurisdiction.
- Cookies require consent per the visitor's jurisdiction.
- Customer quotes and logos require documented written consent, stored in a single folder.

## Worked example

### Before, claim risk

> Our world-class platform helps doctors make better diagnoses, grow practice revenue by 42 percent, and guarantee HIPAA compliance.

Three risks:

1. "World-class" is a superlative without proof.
2. Medical outcome implied ("better diagnoses").
3. Compliance guarantee without an attestation.

### After, compliance-safe

> We publish marketing systems that help private medical practices attract and convert local patients. One partner practice, Kestrel Family Medicine, reported a 42 percent increase in bookings in the three months after launch. Results shown are from a single customer and will vary. We work inside HIPAA-aware workflows with your compliance team.

## Feeding this asset to an AI agent

```text
Before publishing any customer-facing content, load /02-voice/COMPLIANCE.md.

Run this check:
1. Does the draft contain a superlative ("best," "number one," "top")? If yes, remove.
2. Does the draft contain a performance number attached to a named customer? If yes, confirm written consent and add the required disclaimer.
3. Does the draft contain a forward-looking statement, a medical outcome, a legal outcome, a financial return, or a regulatory claim? If yes, hold for human review.
4. Does the draft mention a named competitor? If yes, hold for human review unless the piece is an explicitly approved comparison page.
5. Does the draft require the standard AI-disclosure footer per company policy? If yes, append it.

If any check fails, stop and flag the piece for human and counsel review with a pointer to /02-voice/COMPLIANCE.md.
```

Reference paths: `/02-voice/COMPLIANCE.md`, `/02-voice/VOICE.md`, `/02-voice/TERMINOLOGY.md`.
