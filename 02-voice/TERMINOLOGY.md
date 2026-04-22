# Terminology Guide

Part of M10: The Marketing Foundation 10 by imFORZA.

## How to use this file

- **What goes in:** Preferred words, banned words, definitions, rationale, regionalisms, product and service naming conventions, abbreviation rules.
- **How agents read it:** Agents check terminology before finalizing copy. Preferred words are used. Banned words are flagged and replaced.
- **Update cadence:** Review quarterly. Add a term any time the team catches itself correcting an agent or a new hire.

## AI-agent-ready checklist

- [ ] Machine-readable: alphabetical tables with preferred vs. banned columns.
- [ ] Structured: clear categories (product, service, industry, company, audience).
- [ ] Single source of truth: the only terminology doc the company publishes.
- [ ] Versioned: last-updated date and a change log at the bottom.
- [ ] Cite-able: agents reference `/02-voice/TERMINOLOGY.md` when correcting a word.

Last updated: [YYYY-MM-DD]

---

## Preferred terms

Primary nouns and verbs you want agents to use.

| Preferred term | Definition | Why we use it |
| --- | --- | --- |
| [Customer] | A business or individual that has purchased from us. | Plain, honest, precise. |
| [Work] | What we deliver to a customer. | Plain language, signals craft. |
| [Partner] | An external party we build work with, not for. | Signals collaboration, not transaction. |
| [Small and growing business] | Companies under 250 employees. | Replaces jargon that groups of buyers dislike. |
| [Playbook] | A repeatable set of steps. | Practitioner word, buyers understand it. |
| [Asset] | A piece of intellectual property that compounds in value. | Signals ownership and durability. |
| [Foundation] | The set of assets you own before you buy any tool. | Maps to M10 framework. |
| [System] | A set of assets plus the rules for how they work together. | Distinguishes from a single tool. |
| [Model] | A repeatable, explainable way we make decisions. | Signals transparency. |
| [Draft] | First written version. | Plain. |
| [Ship] | To publish or release. | Practitioner word. |
| [Fork] | To copy a template and adapt it. | Software-native, developer-aware. |

## Banned terms

Words and phrases we do not publish. If an agent drafts one, it must be rewritten.

| Banned term | Why | Use instead |
| --- | --- | --- |
| Leverage (as a verb) | Corporate filler. | Use. |
| Utilize | Corporate filler. | Use. |
| Solutions (generic) | Meaningless. | Name the thing. |
| Synergy | Corporate filler. | Delete. |
| Thought leader | Self-congratulatory. | Let work speak. |
| Guru | Unserious. | Delete. |
| Ninja | Unserious. | Delete. |
| Rockstar | Unserious. | Delete. |
| Best-in-class | Unprovable. | Show a number instead. |
| World-class | Unprovable. | Show a number instead. |
| Cutting-edge | Unprovable. | Name the tech. |
| Revolutionary | Unprovable. | Show the before-and-after. |
| Game-changer | Unprovable. | Show the change. |
| Seamless | Over-used. | Describe the experience in plain words. |
| Frictionless | Over-used. | Describe the experience in plain words. |
| In today's [X] world | Empty opener. | Delete. |
| At [Company], we believe | Empty opener. | Start with the claim. |
| SMB (in public copy) | Insider jargon. | Use small and growing business. |
| Funnel (in public copy) | Insider jargon. | Use buying journey. |
| Stack (in public copy) | Insider jargon. | Use toolkit. |
| Upstream / downstream | Insider jargon. | Use before and after. |
| Agentic | New-term hype. | Describe what the agent does. |

## Product and service naming

- Product names are capitalized like a proper noun on first mention, then lowercase for flow if natural.
- Services are described with a verb-first phrase ("we build foundations," "we ship content systems") rather than a capitalized noun.
- Internal codenames never appear in public copy.
- Version numbers use a single decimal (`v1.2`), not semver in public copy.

## Audience naming

- Refer to the reader as "you" or "your team," not "our customers."
- Refer to third parties as "small and growing businesses," "practitioners," "operators," or the specific vertical ("home services company," "specialty coffee roaster"), not "SMBs," "mom-and-pops," or "pro-sumers."
- Refer to competitors by category, not by name, unless the piece is a comparison page built for that purpose.

## Company naming

- **Our company:** [Legal name, trading name, and how to refer to us in prose.]
- **First reference on a page:** [Full trading name.]
- **Subsequent references:** [Short form.]
- **Possessive form:** ["Our" in first-person contexts, short-form possessive for third-person.]

Example template:
> On first reference, say "imFORZA." On second reference, "we" or "our team."

## Industry and category

Words we use to describe our category.

- **Category noun:** [e.g., marketing foundation platform]
- **Category verb:** [e.g., building the marketing foundation]
- **Buyer label:** [e.g., Head of Marketing, Owner-Operator, Ops Director]
- **Outcome label:** [e.g., compounding marketing return]

## Regionalisms

- Default spelling: US English.
- Quoted phrases keep the speaker's spelling.
- When publishing in a local market (UK, AU, CA) keep the regional spelling for that locale and tag the piece with a locale.

## Abbreviations

- Spell out on first reference, abbreviate on second: "Ideal Customer Profile (ICP) ... the ICP."
- Three-letter internal acronyms (VoC, JTBD) can be abbreviated in internal docs and in expert-audience content with context.
- Never abbreviate in hero headlines.

## Numbers, units, and dates

- Numerals for 10 and above.
- Spell out one through nine unless comparing ("2 out of 3").
- Use the US dollar format ($1,250 not $1250, $1M for shorthand).
- Percentages as numerals with "percent" spelled out in body prose.
- Dates as "April 17, 2026" in public copy and `YYYY-MM-DD` in internal systems.

## Worked example

### Before, terminology off

> Our cutting-edge solutions leverage best-in-class agentic AI to unlock seamless funnel optimization for SMBs in today's rapidly evolving landscape.

### After, corrected

> We build the marketing foundation small and growing businesses need before they buy any AI tool. Once the foundation is written down, every tool you already own gets better.

What changed:

- "Cutting-edge solutions" cut. Replaced with the plain noun.
- "Leverage" cut. Replaced with "build."
- "Agentic AI" replaced with "AI tool."
- "Seamless funnel optimization" replaced with a concrete outcome.
- "SMBs" replaced with "small and growing businesses."
- "In today's rapidly evolving landscape" cut entirely.

## Feeding this asset to an AI agent

```text
Load /02-voice/TERMINOLOGY.md before finalizing any draft.

Run this check:
1. Did you use any term from the Banned terms table? If yes, swap in the Use Instead.
2. Did you use Preferred terms where available? If not, prefer them.
3. Did you capitalize product names correctly on first reference?
4. Did you avoid insider jargon unless the audience specifically requested it?
5. For customer quotes, keep the quote exact, even if it contains banned terms.

Cite /02-voice/TERMINOLOGY.md when explaining a correction.
```

## Change log

| Date | Change | Author |
| --- | --- | --- |
| [YYYY-MM-DD] | Initial version. | [Name] |

Reference paths: `/02-voice/TERMINOLOGY.md`, `/02-voice/VOICE.md`, `/02-voice/COMPLIANCE.md`.
