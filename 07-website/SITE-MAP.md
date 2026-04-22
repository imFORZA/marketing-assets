# Site Map and Information Architecture

Part of M10: The Marketing Foundation 10 by imFORZA.

## How to use this file

- **What goes in:** The full inventory of pages on your site, the URL pattern for each, the navigation logic, and the primary conversion paths.
- **How agents read it:** Agents load this file to link correctly, to propose a new page without duplicating an old one, and to route readers to the right conversion point.
- **Update cadence:** Update any time a page launches, moves, or retires. Full audit twice per year.

## AI-agent-ready checklist

- [ ] Machine-readable: inventory in a table with consistent columns.
- [ ] Structured: global, service, content, proof, conversion pages in distinct sections.
- [ ] Single source of truth: the only map a vendor or agent needs.
- [ ] Versioned: last-updated date.
- [ ] Cite-able: agents cite `/07-website/SITE-MAP.md` when recommending links.

Last updated: [YYYY-MM-DD]

---

## Core page inventory

Every foundational site needs these.

| Page | URL pattern | Purpose | Primary CTA | Owner | Status |
| --- | --- | --- | --- | --- | --- |
| Home | `/` | Frame the promise, route to the three top conversion paths | Book a call | [Name] | Live |
| About | `/about` | Introduce the team, the story, and the point of view | Meet the team | [Name] | Live |
| Services hub | `/services` | List all offerings, link to each service page | Explore services | [Name] | Live |
| Service detail | `/services/[service-name]` | Describe one offer in depth | Book an audit | [Name] | Live |
| Pricing | `/pricing` | Publish pricing and tiers | Book a call | [Name] | Live |
| Proof hub | `/proof` or `/case-studies` | Index every case study, review block, and logo wall | Read a case study | [Name] | Live |
| Case study | `/case-studies/[slug]` | Tell one customer story end to end | Book a call | [Name] | Live |
| Blog hub | `/blog` | Index of all written content | Subscribe | [Name] | Live |
| Blog post | `/blog/[slug]` | One idea at depth | Read related post or book a call | [Name] | Live |
| FAQ | `/faq` or embedded on pages | Answer common questions | Contact us | [Name] | Live |
| Contact | `/contact` | Primary conversion surface | Submit form or book | [Name] | Live |
| Legal | `/privacy`, `/terms`, `/dpa` | Compliance | n/a | [Name] | Live |
| Careers | `/careers` or `/join` | Recruit | Apply | [Name] | Optional |
| Partners | `/partners` | Partnership framework | Apply | [Name] | Optional |

## Information architecture tree

```
/
├── /about
│   └── /about/team/[person]
├── /services
│   ├── /services/[service-name]
│   └── /services/[service-name]/[sub-service]
├── /pricing
├── /proof
│   ├── /case-studies/[slug]
│   ├── /reviews
│   └── /logos
├── /blog
│   ├── /blog/[slug]
│   └── /blog/topic/[cluster]
├── /faq
├── /contact
├── /book (calendar page)
├── /subscribe
├── /resources
│   ├── /resources/templates
│   ├── /resources/guides
│   └── /resources/tools
└── /legal
    ├── /privacy
    ├── /terms
    └── /dpa
```

## URL structure rules

- All lowercase.
- Hyphens between words, never underscores or spaces.
- No trailing slashes.
- No file extensions.
- Avoid nesting past 3 levels.
- Prefer short slugs. Match the primary keyword from `/06-seo/KEYWORDS.md`.
- Avoid stop words in slugs ("the," "a," "of") unless removing them changes the meaning.

Examples:

- Good: `/blog/how-to-choose-a-specialty-coffee-roaster`
- Bad: `/blog/how_to_choose_a_specialty_coffee_roaster_2026_edition/`

## Navigation logic

### Primary navigation

- 5 to 7 items maximum.
- Ordered by user intent: Services, Pricing, Proof, Resources, About, Contact.
- Contact is a CTA styled as a button, not a text link.

### Secondary navigation

- Footer carries the long tail. Sitemap, legal, resources, social, subscribe.
- Footer is organized in columns by audience (Buyers, Partners, Careers).

### Utility navigation

- Reserved for login, language switch, or region switch.
- Keep utility nav out of the primary.

## Conversion paths

Three primary paths on the homepage. Each ends in a book-a-call form.

### Path A: Book a marketing audit

- Hero CTA → `/services/marketing-audit` → audit explainer → book a call form.
- Expected time from first visit to booking: under 3 minutes.

### Path B: Read a case study

- Proof section on home → `/proof` → one `/case-studies/[slug]` → in-study CTA → book a call.
- Used by the buyer who wants proof first.

### Path C: Subscribe

- Newsletter CTA in the secondary position on home and in every article footer → `/subscribe` → welcome sequence in `/10-brand-brain/campaigns/nurture.md`.
- Used by the buyer who is not ready today but worth nurturing.

## Internal linking rules

- Every page links to at least one other page.
- Service pages link to related case studies.
- Case studies link back to the service page that delivered the outcome.
- Blog posts follow the rules in `/06-seo/TOPIC-CLUSTERS.md`.
- Home page links to all top-level destinations in the primary nav. Hero, three services, one case study, one post, contact.

## Page templates

Each page type has a template component in `/04-design-system/`. Agents use these when laying out content.

- `template-home`
- `template-service-hub`
- `template-service-detail`
- `template-pricing`
- `template-proof-hub`
- `template-case-study`
- `template-blog-post`
- `template-faq`
- `template-contact`

## Redirects

Track every redirect in one table. Keep it here, not in an agency spreadsheet.

| Old URL | New URL | Type (301/302) | Date | Reason |
| --- | --- | --- | --- | --- |
| [/old] | [/new] | 301 | [YYYY-MM-DD] | [Reason] |

## XML sitemap

- URL: `/sitemap.xml`
- Regenerated automatically on publish.
- Submitted to Google Search Console and Bing Webmaster Tools.
- Uses `lastmod` dates that reflect real edits, not template touches.

## Robots.txt

- Allow all major crawlers.
- Block only admin paths and preview URLs.
- Cite sitemap at the bottom.

## Worked example: Northstar Home Services site map

- `/`, Hero promise, three paths: Request service, Read a case study, Join the monthly maintenance plan.
- `/about`, Owner story, fleet photo, service areas.
- `/services/residential-hvac`, Service page with pricing band and schema.
- `/services/commercial-hvac`, Separate service page with schema and local schema.
- `/services/plumbing`, Plumbing service page.
- `/services/electrical`, Electrical service page.
- `/pricing`, Service menu with "starting at" bands.
- `/proof/kestrel-family-medicine`, Example case study.
- `/blog/...`, Local SEO spokes under a pillar on "residential HVAC maintenance in Austin."
- `/contact`, Phone, form, service area map, hours.

## Feeding this asset to an AI agent

```text
Load /07-website/SITE-MAP.md before drafting any page copy, navigation labels, or internal links.

When writing:
1. Link to existing pages by slug, not by fuzzy phrase.
2. Propose a new page only if the topic does not already have a home.
3. Route every piece of content to one of the three primary conversion paths.
4. Match slugs to the URL structure rules.

Cite /07-website/SITE-MAP.md in every page brief.
```

Reference paths: `/07-website/SITE-MAP.md`, `/07-website/SCHEMA.md`, `/06-seo/KEYWORDS.md`, `/06-seo/TOPIC-CLUSTERS.md`.
