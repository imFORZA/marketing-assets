# Tracking Plan

Part of M10: The Marketing Foundation 10 by imFORZA.

## How to use this file

- **What goes in:** Every event name, every property, every conversion definition, every UTM convention, and the attribution model the business uses.
- **How agents read it:** Agents use this file when writing briefing docs that include tracking expectations. Engineers use this file when wiring new pages and flows.
- **Update cadence:** Audit every time a new page ships. Full review quarterly.

## AI-agent-ready checklist

- [ ] Machine-readable: events and properties in tables.
- [ ] Structured: taxonomy, conversion events, UTM conventions, attribution, consent.
- [ ] Single source of truth: no alternate event registry in a Notion or a Google Sheet.
- [ ] Versioned.
- [ ] Cite-able: agents cite `/09-data/TRACKING-PLAN.md` when describing events.

Last updated: [YYYY-MM-DD]

---

## Naming rules

- Event names use `snake_case`.
- Properties use `snake_case`.
- Events describe the action, not the page ("form_submit," not "contact_page_action").
- Values are lowercase strings unless the property is a number or boolean.
- No PII in event names or property values.

## Event taxonomy

| Event name | Trigger | Properties | Who fires it | Owner | Live in |
| --- | --- | --- | --- | --- | --- |
| `page_view` | Any page load | `page_path`, `page_title`, `page_type`, `cluster` | GTM | [Owner] | GA4, CDP |
| `cta_click` | User clicks a tracked CTA | `cta_id`, `cta_label`, `cta_page`, `cta_position` | GTM | [Owner] | GA4, CDP |
| `form_view` | Form becomes visible in viewport | `form_id`, `form_name`, `form_page` | GTM | [Owner] | GA4 |
| `form_start` | User interacts with a form field | `form_id` | GTM | [Owner] | GA4 |
| `form_submit` | Form submitted successfully | `form_id`, `form_name`, `form_source`, `lead_persona_guess` | GTM | [Owner] | GA4, CRM |
| `form_error` | Form fails validation | `form_id`, `error_code` | GTM | [Owner] | GA4 |
| `call_book_started` | Calendar widget opened | `widget_id`, `page_source` | GTM | [Owner] | GA4 |
| `call_booked` | Calendar event created | `call_type`, `page_source`, `utm_source`, `utm_campaign` | Calendar webhook | [Owner] | CRM, GA4 |
| `newsletter_subscribe` | Newsletter form submitted | `list_id`, `source_page` | Email tool webhook | [Owner] | CRM, GA4 |
| `lead_magnet_download` | Gated asset downloaded | `asset_id`, `asset_name` | GTM | [Owner] | CRM, GA4 |
| `pricing_view` | Pricing page viewed | `tier_viewed` | GTM | [Owner] | GA4 |
| `comparison_view` | Comparison page viewed | `competitor_slug` | GTM | [Owner] | GA4 |
| `search_query` | On-site search submitted | `query`, `results_count` | Search tool | [Owner] | GA4 |
| `video_play` | Tracked video plays | `video_id`, `video_title`, `percent_watched` | Player | [Owner] | GA4 |
| `chat_started` | Live chat widget opened | `chat_context` | Chat tool | [Owner] | CRM, GA4 |

## Conversion events

The subset of events we care about for optimization and reporting.

| Event | Stage | Owner of the number |
| --- | --- | --- |
| `form_submit` (lead form) | Top of funnel | Marketing |
| `newsletter_subscribe` | Top of funnel | Marketing |
| `lead_magnet_download` | Consideration | Marketing |
| `call_booked` | Decision | Sales + Marketing |
| `deal_opened` (CRM event) | Decision | Sales |
| `deal_closed_won` (CRM event) | Close | Sales |

## UTM conventions

Always include a full UTM set on campaign links. Never truncate.

| Parameter | Rule | Example |
| --- | --- | --- |
| `utm_source` | Channel source, lowercase, no spaces | `linkedin`, `newsletter`, `podcast`, `google` |
| `utm_medium` | Marketing medium | `organic_social`, `paid_social`, `email`, `cpc`, `referral` |
| `utm_campaign` | Campaign slug, yyyy-mm-campaignname | `2026-04-product-launch` |
| `utm_content` | Ad or creative variant | `variant-a`, `variant-b`, `link-in-bio` |
| `utm_term` | Keyword for paid search | `specialty-coffee-roaster` |

Example canonical URL:

```
https://www.example.com/services/marketing-audit?utm_source=linkedin&utm_medium=organic_social&utm_campaign=2026-04-launch&utm_content=founder-post-1
```

## Attribution model

- **Awareness reporting:** First touch.
- **Pipeline reporting:** Last non-direct touch, validated by sales.
- **Revenue reporting:** Multi-touch (40 percent first touch, 40 percent last touch, 20 percent assist).
- **Reconcile against CRM every month.** Marketing-claimed revenue never exceeds CRM-claimed revenue.

## Consent and privacy

- Visitor consent is captured before analytics, ad, and personalization tags fire in jurisdictions that require it.
- Consent state is stored in the CDP and replayed to downstream tools.
- Cookie classification table lives in `/02-voice/COMPLIANCE.md` and is updated with every tool change.

## Tagging QA checklist

Before any new page or funnel goes live.

- [ ] All events defined in the taxonomy fire with required properties.
- [ ] Every CTA has `cta_id`, `cta_label`, `cta_page` set.
- [ ] UTMs on all campaign links validated with a test click.
- [ ] Consent respected in test mode.
- [ ] No PII in property values.
- [ ] Conversion event verified end to end in at least one environment.

## Worked example: conversion event for the marketing audit

- **Page:** `/services/marketing-audit`
- **CTA:** "Book a 30-minute audit" button.
- **CTA attributes:** `cta_id="audit-hero"`, `cta_label="Book a 30-minute audit"`, `cta_page="/services/marketing-audit"`, `cta_position="hero"`.
- **Event:** `cta_click` on button, `call_book_started` on widget open, `call_booked` on accepted event.
- **Downstream:** `call_booked` posts to CRM as a new deal tagged `source=marketing-audit-hero`.
- **Attribution:** First touch from GA4 session start, last touch from `call_booked` UTM set.

## Feeding this asset to an AI agent

```text
Load /09-data/TRACKING-PLAN.md before launching any new page, campaign, or funnel.

Workflow:
1. Identify the conversion event the new asset is meant to drive.
2. Confirm the event exists in the taxonomy.
3. If a new event is needed, propose it with the exact same column set as the taxonomy.
4. Attach UTM parameters per the conventions above.
5. Confirm consent handling.
6. Add the asset to the tagging QA checklist before launch.

Cite /09-data/TRACKING-PLAN.md in the launch brief.
```

Reference paths: `/09-data/TRACKING-PLAN.md`, `/09-data/ANALYTICS.md`, `/09-data/TOP-PERFORMERS.md`.
