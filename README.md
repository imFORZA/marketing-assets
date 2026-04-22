# Marketing Foundation 10 (M10)

**The 10 foundational marketing assets every small business needs to produce on-brand, on-strategy work with AI.**

A fork-and-fill-in starter pack for operators who want their brand structured so any AI agent (Claude, ChatGPT, Gemini, OpenClaw, Hermes, Manus) can consume it and produce marketing that sounds like them, sells what they sell, and serves who they serve.

Built by [imFORZA](https://www.imforza.com). MIT licensed. Companion to the pillar guide: [The 10 Marketing Assets Every Small Business Needs to Future-Proof Their Marketing in the AI Era](https://www.imforza.com/blog/marketing-assets-for-small-business/).

---

## Why this exists

58% of small businesses use generative AI. Only 26% get real value from it (U.S. Chamber 2026, Amra and Elma 2026).

That gap is not a tools problem. It is a fuel problem. AI produces generic work because you gave it generic inputs.

Organizations with integrated AI systems see 3x better outcomes than those running tools in silos (ConvertMate 2026). Integration begins with integrated assets, not integrated software.

M10 is the set of 10 structured files that fix the input problem once. Build them and every AI tool you load them into, now and five years from now, produces work that actually sounds like you.

---

## The 10 Assets

```
marketing-assets/
├── 01-icp/              Who we serve (personas + voice-of-customer library)
├── 02-voice/            How we sound (voice, terminology, compliance)
├── 03-visual/           How we look (logos, color, type, imagery, AI prompts)
├── 04-design-system/    Machine-readable tokens (DESIGN.md + theme.json)
├── 05-offer/            What we sell (offers, competitors, win-loss)
├── 06-seo/              What we rank for (keywords, clusters, GEO/AEO)
├── 07-website/          Core pages architecture (IA, schema)
├── 08-content/          Content library, proof corpus, editorial calendar
├── 09-data/             Analytics, tracking plan, top-performers library
└── 10-brand-brain/      The meta-asset: templates, playbooks, campaigns, prompts
```

Each asset has four required attributes: machine-readable, structured, single-source-of-truth, versioned. If any file fails one of those tests, it is not yet an asset.

---

## Quick start

1. **Fork this repo** and clone it locally.
2. **Work through the folders in order** (01 to 10). Every layer depends on the one before it.
3. **Start by filling `01-icp/ICP.md`** with your first primary persona. Do not skip this. Every downstream file depends on knowing who you serve.
4. **Commit after every asset** so you have a versioned history.
5. **Set up `10-brand-brain/BRAND-BRAIN.md`** once assets 1-9 exist. It is the file you paste into Claude Projects, ChatGPT Projects, Gemini Gems, or any AI agent's system prompt.

## The minimum viable build

If you only build three assets, build these:

1. `01-icp/ICP.md` + `01-icp/VOICE-OF-CUSTOMER.md`
2. `02-voice/VOICE.md` + `02-voice/TERMINOLOGY.md`
3. `10-brand-brain/BRAND-BRAIN.md`

Those three files alone will triple the quality of AI output overnight.

---

## How it maps to AI deliverables

| Deliverable | Assets required |
|---|---|
| Blog post that ranks | 1, 2, 6, 7, 8, 10 |
| Email campaign | 1, 2, 5, 8, 9, 10 |
| Landing page | 1, 2, 3, 4, 5, 7, 8, 10 |
| Social post / carousel | 1, 2, 3, 8, 10 |
| Paid ad (copy + creative) | 1, 2, 3, 5, 6, 9, 10 |
| Image / graphic / illustration | 3, 4, 10 |
| Sales collateral (deck, one-pager, proposal) | 1, 2, 3, 5, 8, 10 |
| SEO content sprint | 1, 2, 6, 7, 8, 10 |
| Case study write-up | 1, 2, 5, 8, 10 |
| Nurture sequence | 1, 2, 5, 8, 9, 10 |
| Performance optimization | 1, 6, 9, 10 |
| PR / founder content | 1, 2, 5, 8, 10 |

If a deliverable needs an input that isn't covered here, flag the gap before writing.

---

## Loading into AI agents

- **Claude Projects:** upload the whole repo as a project, set system prompt to reference `10-brand-brain/BRAND-BRAIN.md`.
- **ChatGPT Projects:** create a new Project, upload the key files, paste `BRAND-BRAIN.md` into instructions.
- **Gemini Gems:** paste `BRAND-BRAIN.md` into Gem instructions, attach the folder as knowledge.
- **OpenClaw / Hermes / Manus / custom agents:** mount the folder as the agent's knowledge base.
- **Zapier / Make / n8n:** load the relevant asset files at workflow start via a file-read step.
- **Cursor / v0 / Lovable / Bolt** (design and dev tools): commit to the same repo as your product code. These tools read `theme.json` and `DESIGN.md` automatically.

---

## What's NOT in the Core 10

Deliberately excluded: email lists, social accounts, Google Business Profile, ad accounts, CRM records, domain and DNS, legal entities. Those are **distribution channels and operational infrastructure**, not inputs to content. They live downstream of the Core 10.

## What you won't find here

- No vendor lock-in. Every file is plain Markdown or JSON. Use any tool you want on top.
- No secrets. Don't commit API keys, customer PII, or private financial data. Keep those in `.env` (which is gitignored).

---

## Build order by maturity

| Where you are | Build these first |
|---|---|
| Marketing is ad-hoc, no system | 1, 2, 5 |
| Marketing happens but is scattered | 3, 4, 6, 7 |
| Marketing works but depends on one person | 8, 9 |
| Marketing runs as an asset | Formalize 10 (Brand Brain) |

---

## Contributing

This is a starter, not a community standard. Fork it, adapt it to your business, and make it yours. If you end up improving a template significantly and want to contribute it back, see `CONTRIBUTING.md`.

## Need help building?

If you would rather not spend 60 to 120 days building this from scratch, we build the full M10 stack (and the AI marketing system on top) for small businesses.

**Free Marketing Asset Audit:** [schedule a 30-minute call](https://www.imforza.com/contact/). We score your current foundation against M10 and identify your top three gaps. No sales pressure, no commitment.

**Build-for-you service:** [start the conversation](https://www.imforza.com/contact/).

---

## License

[MIT](./LICENSE). Do whatever you want with it.

## Credits

Built by the [imFORZA](https://www.imforza.com) team. We build AI marketing systems for small businesses.
