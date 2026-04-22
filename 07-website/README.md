# 07, Website and Core Pages Architecture

The Surface Layer opens here. Everything in the Identity and Market layers now takes a visible form. This folder is the source of truth for the pages, URLs, and schema that carry your marketing.

## What this layer does

Two files. One for information architecture and page inventory. One for schema.

- `SITE-MAP.md` covers core pages, URL patterns, navigation logic, and conversion paths. It is the blueprint a CMS builder, a designer, or an agent uses to assemble or audit the site.
- `SCHEMA.md` is the JSON-LD reference for every page type. It is the structured-data layer that makes the site legible to Google, Bing, ChatGPT, Perplexity, and Gemini.

## Files in this folder

- `SITE-MAP.md`, Page inventory, IA tree, URL structure rules, navigation logic, conversion paths.
- `SCHEMA.md`, JSON-LD snippets per page type, copy-paste ready.

## Build order inside this layer

1. Write `SITE-MAP.md` first. The map drives everything that follows.
2. Write `SCHEMA.md` once the page types are settled.

## What this folder feeds into

- `08-content` fills the pages with editorial material.
- `09-data` is wired to track every URL in the map.
- `10-brand-brain` loads the site map so agents link to the right page every time.

## Next layer

After this folder is filled in, move to `08-content` to fill the pages with material.

Part of M10: The Marketing Foundation 10 by imFORZA.
