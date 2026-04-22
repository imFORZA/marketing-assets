# Schema and Structured Data

Part of M10: The Marketing Foundation 10 by imFORZA.

## How to use this file

- **What goes in:** The JSON-LD snippets for every page type on the site. Copy, paste, fill in the variables.
- **How agents read it:** Agents and CMS templates load the right schema type per page. Any new template is built with schema wired in on day one.
- **Update cadence:** Review every time a major search engine updates guidance. Run every page through a validator before launch.

## AI-agent-ready checklist

- [ ] Machine-readable: JSON-LD snippets in code blocks.
- [ ] Structured: one schema type per H2.
- [ ] Single source of truth: no alternate schema library in the agency folder.
- [ ] Versioned: last-updated date.
- [ ] Cite-able: agents cite `/07-website/SCHEMA.md` when injecting schema.

Last updated: [YYYY-MM-DD]

---

## Why structured data matters

Structured data is the polite way of telling search and answer engines what is on your page. Humans read headlines. Engines read schema. Pages with clean schema win more citations, more rich results, and more AI-overview mentions.

## Validation

Before every launch, run the page through:

- Google's Rich Results Test.
- Schema.org validator.
- The Bing URL Inspection tool.

## Organization (for the homepage)

```json
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "name": "[Company Name]",
  "url": "https://www.example.com",
  "logo": "https://www.example.com/assets/logo-primary.png",
  "sameAs": [
    "https://www.linkedin.com/company/[handle]",
    "https://twitter.com/[handle]",
    "https://www.youtube.com/@[handle]"
  ],
  "contactPoint": [{
    "@type": "ContactPoint",
    "telephone": "+1-555-555-0100",
    "contactType": "customer service",
    "areaServed": "US",
    "availableLanguage": "en"
  }]
}
```

## LocalBusiness (for a local operator)

```json
{
  "@context": "https://schema.org",
  "@type": "LocalBusiness",
  "@id": "https://www.example.com/#business",
  "name": "[Company Name]",
  "image": "https://www.example.com/assets/storefront.jpg",
  "url": "https://www.example.com",
  "telephone": "+1-555-555-0100",
  "priceRange": "$$",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "100 Main Street",
    "addressLocality": "Austin",
    "addressRegion": "TX",
    "postalCode": "78701",
    "addressCountry": "US"
  },
  "geo": {
    "@type": "GeoCoordinates",
    "latitude": 30.2672,
    "longitude": -97.7431
  },
  "openingHoursSpecification": [{
    "@type": "OpeningHoursSpecification",
    "dayOfWeek": ["Monday","Tuesday","Wednesday","Thursday","Friday"],
    "opens": "08:00",
    "closes": "18:00"
  }]
}
```

## Service (for a service detail page)

```json
{
  "@context": "https://schema.org",
  "@type": "Service",
  "serviceType": "[Service name]",
  "provider": {
    "@type": "Organization",
    "name": "[Company Name]",
    "url": "https://www.example.com"
  },
  "areaServed": {
    "@type": "AdministrativeArea",
    "name": "[City or Region]"
  },
  "description": "[One-sentence description of the service]",
  "offers": {
    "@type": "Offer",
    "price": "[Price or range]",
    "priceCurrency": "USD",
    "availability": "https://schema.org/InStock",
    "url": "https://www.example.com/services/[slug]"
  }
}
```

## Product (for a productized offer)

```json
{
  "@context": "https://schema.org",
  "@type": "Product",
  "name": "[Offer name]",
  "description": "[One-sentence description]",
  "brand": {
    "@type": "Brand",
    "name": "[Company Name]"
  },
  "offers": {
    "@type": "Offer",
    "url": "https://www.example.com/services/[slug]",
    "priceCurrency": "USD",
    "price": "[Price]",
    "availability": "https://schema.org/InStock"
  },
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "[Value]",
    "reviewCount": "[Count]"
  }
}
```

## Article (for long-form editorial)

```json
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "[Article title]",
  "image": ["https://www.example.com/assets/og/[slug].jpg"],
  "datePublished": "[YYYY-MM-DD]",
  "dateModified": "[YYYY-MM-DD]",
  "author": [{
    "@type": "Person",
    "name": "[Author Name]",
    "url": "https://www.example.com/about/team/[author-slug]"
  }],
  "publisher": {
    "@type": "Organization",
    "name": "[Company Name]",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.example.com/assets/logo-primary.png"
    }
  },
  "description": "[Meta description]",
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://www.example.com/blog/[slug]"
  }
}
```

## BlogPosting (for a blog post)

```json
{
  "@context": "https://schema.org",
  "@type": "BlogPosting",
  "headline": "[Post title]",
  "description": "[Meta description]",
  "image": "https://www.example.com/assets/og/[slug].jpg",
  "datePublished": "[YYYY-MM-DD]",
  "dateModified": "[YYYY-MM-DD]",
  "author": {
    "@type": "Person",
    "name": "[Author Name]",
    "url": "https://www.example.com/about/team/[author-slug]"
  },
  "publisher": {
    "@type": "Organization",
    "name": "[Company Name]",
    "logo": {
      "@type": "ImageObject",
      "url": "https://www.example.com/assets/logo-primary.png"
    }
  }
}
```

## HowTo (for step-by-step content)

```json
{
  "@context": "https://schema.org",
  "@type": "HowTo",
  "name": "[How-to title]",
  "description": "[One-sentence description]",
  "image": "https://www.example.com/assets/how-to/[slug].jpg",
  "totalTime": "PT30M",
  "supply": [
    { "@type": "HowToSupply", "name": "[Supply 1]" }
  ],
  "tool": [
    { "@type": "HowToTool", "name": "[Tool 1]" }
  ],
  "step": [
    {
      "@type": "HowToStep",
      "name": "[Step 1 title]",
      "text": "[Step 1 description]",
      "url": "https://www.example.com/blog/[slug]#step-1"
    },
    {
      "@type": "HowToStep",
      "name": "[Step 2 title]",
      "text": "[Step 2 description]",
      "url": "https://www.example.com/blog/[slug]#step-2"
    }
  ]
}
```

## FAQPage (for an FAQ block)

```json
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "[Question 1]",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "[Answer 1, 40 to 80 words]"
      }
    },
    {
      "@type": "Question",
      "name": "[Question 2]",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "[Answer 2, 40 to 80 words]"
      }
    }
  ]
}
```

## Review (for a customer review)

```json
{
  "@context": "https://schema.org",
  "@type": "Review",
  "itemReviewed": {
    "@type": "Service",
    "name": "[Service name]"
  },
  "author": {
    "@type": "Person",
    "name": "[Reviewer Name]"
  },
  "reviewRating": {
    "@type": "Rating",
    "ratingValue": "5",
    "bestRating": "5"
  },
  "reviewBody": "[Reviewer quote]",
  "datePublished": "[YYYY-MM-DD]"
}
```

## BreadcrumbList

```json
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    { "@type": "ListItem", "position": 1, "name": "Home", "item": "https://www.example.com" },
    { "@type": "ListItem", "position": 2, "name": "Services", "item": "https://www.example.com/services" },
    { "@type": "ListItem", "position": 3, "name": "[Service name]", "item": "https://www.example.com/services/[slug]" }
  ]
}
```

## Person (for the author bio page)

```json
{
  "@context": "https://schema.org",
  "@type": "Person",
  "name": "[Author Name]",
  "jobTitle": "[Role]",
  "url": "https://www.example.com/about/team/[slug]",
  "image": "https://www.example.com/assets/team/[slug].jpg",
  "sameAs": [
    "https://www.linkedin.com/in/[handle]",
    "https://twitter.com/[handle]"
  ],
  "worksFor": {
    "@type": "Organization",
    "name": "[Company Name]"
  },
  "description": "[Bio paragraph]"
}
```

## Schema do and do not

**Do**

- Validate every snippet before launch.
- Keep schema in sync with on-page content. Never describe in schema what the page does not say.
- Update `dateModified` on every real edit.
- Add `sameAs` links to every verifiable profile.

**Do not**

- Use schema to claim things the page does not prove.
- Ship `FAQPage` schema on a page that hides the answers behind accordions closed by default if that hurts clarity. Some engines now lean toward visible FAQ content.
- Stuff irrelevant schema types to try to game a feature.

## Feeding this asset to an AI agent

```text
Load /07-website/SCHEMA.md before injecting any structured data.

Workflow:
1. Identify the page type.
2. Copy the matching JSON-LD snippet.
3. Replace every variable with the exact value from the page content.
4. Validate with Google's Rich Results Test and the Schema.org validator.
5. If the page includes an FAQ block, add FAQPage schema with the same questions and answers visible on the page.

Cite /07-website/SCHEMA.md in the page deployment notes.
```

Reference paths: `/07-website/SCHEMA.md`, `/07-website/SITE-MAP.md`, `/06-seo/GEO-AEO.md`.
