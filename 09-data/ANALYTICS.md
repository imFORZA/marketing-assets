# Analytics and Performance Framework

Part of M10: The Marketing Foundation 10 by imFORZA.

## How to use this file

- **What goes in:** The tool stack, the KPIs, the dashboards, the cadences, and the owners that make marketing measurable.
- **How agents read it:** Agents load this file when writing reports, summaries, QBRs, and stand-up updates. They also check this file before claiming a result.
- **Update cadence:** Audit twice per year. Update the day a tool is added, removed, or replaced.

## AI-agent-ready checklist

- [ ] Machine-readable: stack, KPIs, dashboards, cadence in tables.
- [ ] Structured: one section per domain.
- [ ] Single source of truth.
- [ ] Versioned.
- [ ] Cite-able: agents cite `/09-data/ANALYTICS.md` in every reporting draft.

Last updated: [YYYY-MM-DD]

---

## Tracking stack

Name every tool, what it is for, and who owns it.

| Tool | Role | Data domain | Owner | Status |
| --- | --- | --- | --- | --- |
| [GA4] | Web analytics | Traffic, acquisition, conversions | [Owner] | [Live] |
| [GTM] | Tag manager | Event firing | [Owner] | [Live] |
| [HubSpot / Salesforce] | CRM | Deals, contacts, pipeline | [Owner] | [Live] |
| [Klaviyo / Mailchimp] | Email | Campaign sends, opens, clicks, conversions | [Owner] | [Live] |
| [Segment / Rudderstack] | CDP | Identity, event forwarding | [Owner] | [Optional] |
| [Looker Studio / Databox] | Dashboards | Executive and marketing dashboards | [Owner] | [Live] |
| [Hotjar / PostHog] | Qualitative | Session replay, heatmaps, product analytics | [Owner] | [Live] |
| [Ahrefs / Semrush] | SEO | Rankings, backlinks, keyword tracking | [Owner] | [Live] |
| [Plausible / Fathom] | Privacy-friendly analytics | Optional second-source traffic | [Owner] | [Optional] |
| [Call tracking] | Phone tracking | Offline conversions | [Owner] | [If applicable] |

## KPI tree

Pick a north-star metric. Decompose into sub-metrics. Match each to a tool.

### North star

- **Primary business KPI:** [e.g., Closed-won revenue attributable to marketing-sourced leads]
- **Primary marketing KPI:** [e.g., Marketing qualified opportunities (MQOs) per quarter]

### Funnel stage KPIs

| Stage | Metric | Target | Tool | Owner |
| --- | --- | --- | --- | --- |
| Awareness | Organic sessions | [Target] | [GA4] | [Owner] |
| Awareness | Branded search impressions | [Target] | [GSC] | [Owner] |
| Awareness | Social reach | [Target] | [Native + Buffer] | [Owner] |
| Consideration | Newsletter subscribers | [Target] | [Email tool] | [Owner] |
| Consideration | Guide downloads | [Target] | [CRM] | [Owner] |
| Consideration | Time on pillar pages | [Target] | [GA4] | [Owner] |
| Decision | Demo requests | [Target] | [CRM] | [Owner] |
| Decision | Booked calls | [Target] | [Calendar tool] | [Owner] |
| Close | MQOs | [Target] | [CRM] | [Owner] |
| Close | Closed-won ACV | [Target] | [CRM] | [Owner] |
| Retention | Net revenue retention | [Target] | [CRM + finance] | [Owner] |
| Retention | Referrals | [Target] | [CRM] | [Owner] |

## KPI definitions

Write the definition once. Protect it.

- **Lead:** Any person who submits a form or books a call with verified email.
- **Marketing Qualified Lead (MQL):** A lead that matches the ICP and has engaged with at least two content assets or one high-intent asset (pricing, demo, comparison page).
- **Sales Accepted Lead (SAL):** A lead sales has reviewed and confirmed is ready to be worked.
- **Marketing Qualified Opportunity (MQO):** A deal that has entered stage 2 of the pipeline and is attributed to a marketing source.
- **Booked call:** A calendar event accepted by both parties, not a request.
- **Attribution source:** First-touch for awareness metrics, last-touch for booked calls, multi-touch for pipeline reviews.
- **Closed-won:** Signed contract and payment received.

## Dashboards

| Dashboard | Audience | Cadence | Owner | Source |
| --- | --- | --- | --- | --- |
| Weekly pulse | Marketing team | Monday standup | [Owner] | [Tool] |
| Monthly revenue | Leadership | 5th of each month | [Owner] | [Tool] |
| Quarterly review | Board or exec | First week of quarter | [Owner] | [Tool] |
| Channel deep dive | Channel leads | Monthly | [Owner] | [Tool] |
| SEO report | SEO lead and execs | Monthly | [Owner] | [Ahrefs + GSC] |

## Reporting cadence

- **Daily:** Lead volume, ad pacing, top-of-funnel anomalies.
- **Weekly:** Channel performance, content scorecard, pipeline progress.
- **Monthly:** Full funnel review, attribution review, top-performer refresh.
- **Quarterly:** KPI tree review, target reset, retrospective.

## Data ownership

- **Business owner:** The person who cares most if the number is wrong.
- **Technical owner:** The person who maintains the event, the dashboard, or the API.
- **Auditor:** The person who double-checks the numbers before leadership sees them.

Every dashboard lists all three names at the top.

## Data quality checks

Run the following every month.

- Event counts within 2 percent of expected baseline.
- No duplicate conversions from a single session.
- UTM coverage above 98 percent on campaign traffic.
- GA4 to CRM match rate above 85 percent.
- Empty form fills removed or deduped.

## Privacy and consent

- Every form collects only the fields the stage requires.
- Cookie banner is consent-gated per the visitor's jurisdiction.
- GDPR, CCPA, and CPRA requirements tracked in `/02-voice/COMPLIANCE.md`.
- Consent mode configured for ad and analytics tooling.

## Worked example: Cypress Coffee Co. KPI tree

- **North star:** Closed-won wholesale ACV per quarter.
- **Primary marketing KPI:** MQOs from wholesale-fit roasters per month.
- **Funnel KPIs:**
  - Awareness: Organic sessions to the wholesale pillar post.
  - Consideration: Downloads of the wholesale partner playbook.
  - Decision: Booked discovery calls from the wholesale landing page.
  - Close: Signed wholesale agreements.
  - Retention: Second-year renewal rate.

## Feeding this asset to an AI agent

```text
Load /09-data/ANALYTICS.md before drafting any report, email summary, or leadership update.

Rules:
1. Use the KPI definitions exactly as written. Do not re-define.
2. Cite the dashboard or tool when quoting a number.
3. Flag anomalies outside a 2 percent variance.
4. Never invent numbers. If the number is unavailable, say so.

Cite /09-data/ANALYTICS.md in every reporting draft.
```

Reference paths: `/09-data/ANALYTICS.md`, `/09-data/TRACKING-PLAN.md`, `/09-data/TOP-PERFORMERS.md`.
