# 01, ICP and Voice-of-Customer Library

The Identity Layer starts here. Before you decide how you sound, how you look, or what you sell, you write down who you serve. Every downstream asset in M10 depends on it.

## What this layer does

This folder is the single source of truth for the humans you are trying to reach. When an AI agent writes an email, a blog post, a landing page, or an ad, it pulls from these files to answer three questions before it writes a word:

1. Who is the reader.
2. What problem are they trying to solve.
3. What words do they use when they describe the problem.

Without this folder, every downstream agent is guessing. With it, every downstream agent writes to one person instead of a crowd.

## Files in this folder

- `ICP.md`, The full Ideal Customer Profile template. Persona, firmographics, psychographics, jobs-to-be-done, triggers, pain points, objections, disqualifiers, decision criteria.
- `VOICE-OF-CUSTOMER.md`, Raw language bank pulled from sales calls, reviews, support tickets, Reddit, Quora, and LinkedIn comments. The exact phrases your customers use when they talk about their problem.
- `BUYER-COMMITTEE.md`, The map of every role involved in the purchase. Economic buyer, champion, end user, skeptic, legal, finance, procurement. What each one cares about.
- `examples/ICP-example-b2b-saas.md`, A worked example so you can see the finished shape before you fill in your own.

## Build order inside this layer

1. Fill in `ICP.md` first. Start with one primary persona. Resist the urge to define three personas on day one. One real persona beats three fictional ones.
2. Populate `VOICE-OF-CUSTOMER.md` with actual quotes. Not paraphrases. Copy and paste the words.
3. Complete `BUYER-COMMITTEE.md` last. It refines the ICP once you know who else sits at the table.

## What feeds this folder

- Recorded sales calls (Gong, Fathom, Fireflies, Otter, tl;dv).
- Customer support tickets and live chat logs.
- Product review sites (G2, Capterra, TrustRadius, Clutch, Trustpilot, Google reviews).
- Reddit, Quora, Hacker News, Indie Hackers, and LinkedIn posts.
- Survey data and churn interviews.
- Win-loss interviews from the sales team.

## What this folder feeds into

Every other layer reads from here.

- `02-voice` uses VoC to calibrate tone and terminology.
- `05-offer` uses ICP pain points to sharpen positioning.
- `06-seo` uses VoC language to seed keyword research.
- `08-content` uses VoC as the source of quotes, headlines, and hooks.
- `10-brand-brain` loads the ICP as the first section of every system prompt.

## Next layer

After this folder is filled in, move to `02-voice` to define how you talk to the person you just described.

Part of M10: The Marketing Foundation 10 by imFORZA.
