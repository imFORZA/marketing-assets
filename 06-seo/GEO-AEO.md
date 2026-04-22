# Generative Engine Optimization and Answer Engine Optimization

Part of M10: The Marketing Foundation 10 by imFORZA.

## How to use this file

- **What goes in:** The rules that make your content citable by ChatGPT search, Perplexity, Gemini, Google AI Overviews, Bing Copilot, and other answer engines.
- **How agents read it:** Agents load this file at the end of a content brief. Every article passes a GEO and AEO check before publish.
- **Update cadence:** Update any time a major AI search surface ships a visible change to citation behavior.

## AI-agent-ready checklist

- [ ] Machine-readable: rules expressed as short checks.
- [ ] Structured: separate sections for entities, schema, definitions, and citations.
- [ ] Single source of truth.
- [ ] Versioned.
- [ ] Cite-able: agents cite `/06-seo/GEO-AEO.md` when finalizing content.

Last updated: [YYYY-MM-DD]

---

## What GEO and AEO are, in plain language

Generative Engine Optimization (GEO) is the practice of shaping content so large language models pick it up as a reliable source and repeat it in their answers.

Answer Engine Optimization (AEO) is the practice of shaping content so answer engines (Perplexity, Google AI Overviews, ChatGPT search, Gemini, Bing Copilot) can extract a clear answer and credit your page with a citation.

Classic SEO wins rankings. GEO and AEO win citations. They overlap, but they are not the same discipline.

## Why it matters for small and growing businesses

- Google AI Overviews now show on a growing share of informational queries.
- Perplexity and ChatGPT search cite sources by name and URL on every answer.
- Gemini and Copilot pull direct quotes from publisher pages.
- Buyers under 40 report running more category research through answer engines than through Google's classic results.
- A piece of content that ranks number 8 in classic SEO can still be the cited source in an AI overview if it is the clearest, most entity-rich version of the answer.

## Entity clarity

Answer engines index the world in terms of entities. People, companies, products, places, concepts. If your page is fuzzy about what it is about, the engine will not credit you.

Every piece of content must pass this test.

- The H1 names the entity.
- The first paragraph defines the entity in one sentence.
- The first paragraph connects the entity to the reader's problem.
- The URL slug contains the entity as a phrase.
- The page is linked from the relevant pillar, so the engine knows this is the canonical spoke.

## Definition blocks

Every pillar and every spoke includes a clearly formatted definition block near the top. Answer engines love these.

Template:

> **What is [entity]?**
>
> [Entity] is [definition in one to two sentences]. It matters because [plain reason]. Unlike [related concept], [entity] is [clear distinction].

Use an H2 shaped like the question. Use bold for the entity on first use. Keep the answer at 40 to 60 words.

## Question and answer pairs

Build at least one FAQ block on every pillar and every service page.

- Ask three to six questions.
- Phrase each question exactly as a buyer would type it.
- Answer each in 40 to 80 words.
- Link the FAQ block to `FAQPage` schema in `/07-website/SCHEMA.md`.

## Citations and sources

Answer engines prefer pages that cite sources. Pages that cite reduce hallucination risk and earn more trust signals.

Rules:

- Every stat cites a source inline.
- Every quote cites a person, date, and place.
- External links open in the same tab unless they are long references.
- Internal citations link to `/01-icp/VOICE-OF-CUSTOMER.md` for customer quotes and `/08-content/PROOF-CORPUS.md` for case studies.

## Authorship and expertise

Answer engines look for a named, verifiable author.

- Every article carries a byline with the author's full name, role, and a link to a bio page.
- Bio pages contain the author's schema markup (`Person` type).
- Authors list credentials, experience, and external links (LinkedIn, conference talks, publications).
- The site has a visible About page with leadership names and photos.

## Freshness signals

Answer engines lean toward fresh content for commercial and informational queries.

- Every page carries a visible "Last updated" date.
- Evergreen pieces are refreshed every 6 to 12 months.
- The refresh date is also stored in schema (`dateModified`).

## Structured data checklist per page type

| Page type | Required schema |
| --- | --- |
| Homepage | `Organization` |
| About | `AboutPage`, `Person` for leadership |
| Services | `Service`, optionally `Product` |
| Product page | `Product`, `Offer`, `AggregateRating` if reviews |
| Pricing | `Offer` |
| Case study | `Article`, `Review` |
| Blog post | `BlogPosting` or `Article` |
| How-to | `HowTo` |
| FAQ block | `FAQPage` |
| Local business | `LocalBusiness` |
| Reviews | `Review`, `AggregateRating` |

Full JSON-LD snippets live in `/07-website/SCHEMA.md`.

## AI overview and citation patterns

Techniques that earn citations in AI answers.

- **Opening answer paragraph:** Place the most citable answer in the first paragraph, right after the H1 and definition block.
- **Numbered lists:** Short, numbered lists are easier for models to extract and attribute.
- **Named examples:** Specific, real examples with names and numbers are cited more often than generic examples.
- **Exact-match subheadings:** Subheadings that match the likely query phrasing signal relevance.
- **Table of contents:** A visible table of contents helps engines understand structure and indexes more links.

## Bing and Copilot

- Copilot leans on Bing's index. Register the site in Bing Webmaster Tools.
- Copilot tends to over-weight recent content. Refresh critical pages every 90 days.
- Use `lastmod` in the XML sitemap. Set it accurately.

## ChatGPT search and Perplexity

- Both rely on live web indexes plus their own crawling.
- Both cite by exact URL, so canonical URLs matter.
- Both lean on entity clarity and named authorship.
- Both penalize thin content more aggressively than classic Google.

## Gemini and Google AI Overviews

- Both rely on Google's index.
- Both prefer content with clear structure, schema, and authorship.
- Both pull content from pages that have a balance of depth (1,000+ words) and clarity (scannable structure).

## Do and do not

**Do**

- Write definitions in plain language.
- Name entities by their formal names.
- Use schema on every page type.
- Add a FAQ on every pillar.
- Cite sources inline.

**Do not**

- Stuff keywords.
- Hide definitions behind accordions on first load.
- Use generic author bylines like "the team."
- Build a page with no outbound or internal links.
- Publish pages without a visible last-updated date.

## Worked example

### Pillar: "How to choose a specialty coffee roaster"

- H1 names the entity ("specialty coffee roaster").
- First paragraph defines the entity in one sentence.
- An H2 titled "What is a specialty coffee roaster" sits within the first 400 words with a 40 to 60 word answer.
- A FAQ block at the 70 percent mark answers six common buyer questions.
- Every stat cites a source (SCA report, Specialty Coffee Expo data, peer-reviewed study).
- The byline is a real person with a Person schema bio page.
- `BlogPosting` + `FAQPage` schema is present.

## Feeding this asset to an AI agent

```text
Load /06-seo/GEO-AEO.md at the end of every content brief.

Run this check before publish:
1. Does the H1 name the entity clearly?
2. Is there a 40 to 60 word definition block near the top?
3. Does the first paragraph place a direct, citable answer to the main query?
4. Are there at least three FAQ questions answered in 40 to 80 words each?
5. Are all stats cited inline with sources?
6. Is the byline a real person with a Person schema bio page?
7. Is the right schema type attached for this page type (see /07-website/SCHEMA.md)?
8. Is the last-updated date visible and accurate?

Fail any of these, and the piece is not ready to publish.
```

Reference paths: `/06-seo/GEO-AEO.md`, `/06-seo/KEYWORDS.md`, `/06-seo/TOPIC-CLUSTERS.md`, `/07-website/SCHEMA.md`.
