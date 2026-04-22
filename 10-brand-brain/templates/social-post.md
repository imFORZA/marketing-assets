# Social Post Template

Part of M10: The Marketing Foundation 10 by imFORZA.

A fill-in-the-blank template for a single social post. Works for LinkedIn, X/Twitter, Threads, or a short Instagram caption. Per-channel cadence lives in the playbooks.

## How agents use this template

1. Load `/10-brand-brain/playbooks/[channel].md` for the channel's rules.
2. Load `/01-icp/ICP.md` and `/01-icp/VOICE-OF-CUSTOMER.md` for audience.
3. Load `/02-voice/VOICE.md` for sentence rules.
4. Load `/09-data/TOP-PERFORMERS.md` for hook patterns that work.

## Variables

| Variable | Source |
| --- | --- |
| `{{HOOK}}` | Derived from `/01-icp/VOICE-OF-CUSTOMER.md` |
| `{{INSIGHT}}` | Derived from a top-performer or a field note |
| `{{PROOF_POINT}}` | `/08-content/PROOF-CORPUS.md` |
| `{{CTA}}` | `/07-website/SITE-MAP.md` |

---

## Post shape

Most high-performing social posts follow this five-part shape.

1. **Hook (1 to 2 sentences):** Stop the scroll. Usually a claim, a surprising number, or a punchy statement of the reader's problem.
2. **Context (1 to 3 sentences):** Who this is for, what just happened, or why this matters now.
3. **Insight (3 to 6 sentences):** The idea. The teaching. The why.
4. **Proof (1 to 2 sentences):** A named example, a cited stat, a quoted customer.
5. **CTA (1 sentence):** Subscribe, comment, link in the first comment.

## LinkedIn variant (3-post per week cadence)

- Length: 120 to 180 words.
- No em dashes, no hashtags in the body, 3 to 5 hashtags max at the bottom or none.
- One image or native video.
- First line pulls the reader in before the "See more" fold.

```
{{HOOK}}

{{CONTEXT_SENTENCE_1}}
{{CONTEXT_SENTENCE_2}}

Here is what I learned:

{{INSIGHT_SENTENCE_1}}
{{INSIGHT_SENTENCE_2}}
{{INSIGHT_SENTENCE_3}}

{{PROOF_POINT}}

{{CTA}}
```

## X / Twitter short post variant

- 200 to 270 characters.
- No emojis.
- Either self-contained or the first tweet of a thread.

```
{{HOOK}}

{{ONE_LINE_INSIGHT}}

{{PROOF_POINT}}
```

## X / Twitter thread variant (8 to 12 tweets)

- Tweet 1: the hook, 200 to 270 characters, ends with a promise of the rest.
- Tweet 2: "Here is why."
- Tweets 3 through 9: one insight per tweet, numbered.
- Tweet 10: the proof point.
- Tweet 11: the CTA, either to a link or to "follow for more of these."
- Tweet 12: optional, a soft ask to repost the first tweet.

## Instagram caption variant

- 125 to 180 words for a single-image post.
- First 125 characters carry the hook because they appear above "more."
- Use single line breaks between short paragraphs.

## Quora answer variant

Quora uses a different shape. Use `/10-brand-brain/playbooks/quora.md` and not this template.

## Hook patterns that work

Mine `/09-data/TOP-PERFORMERS.md` for the current winners. Here is the starter library.

1. "Most `{{ROLE}}`s I meet have this one problem: `{{PAIN}}`."
2. "`{{NUMBER}}` percent of `{{SEGMENT}}` are doing `{{THING}}` wrong. Here is the fix."
3. "I used to think `{{OLD_BELIEF}}`. Then a customer called me and said this: `{{QUOTE}}`."
4. "The thing nobody tells you about `{{TOPIC}}` is `{{CONTRARIAN_CLAIM}}`."
5. "Here is a template I wish I had three years ago."
6. "I audited `{{N}}` `{{ARTIFACTS}}` this week. Here is what broke."

## Hook patterns to avoid

- "I just wanted to share something that..."
- "Here are 10 ways to..."
- "Humbled to announce..."
- "Excited to share..."
- "In today's ever-changing landscape..."

## Pre-publish checklist

- [ ] Hook passes the scroll test when read on a phone.
- [ ] Body under the channel length limit.
- [ ] One clear CTA.
- [ ] Proof point cited.
- [ ] Voice and terminology rules followed.
- [ ] Image or video matches `/03-visual/IMAGERY.md`.
- [ ] Tracking link uses UTMs per `/09-data/TRACKING-PLAN.md`.
- [ ] Logged in `/08-content/CONTENT-LIBRARY.md`.

## Worked example: LinkedIn post

```
Most operations directors I talk to have the same frustration.

Their marketing agency sends them reports full of clicks but cannot tie a single click to a booked job.

Here is what I have learned after 60 plus SMB engagements.

If the agency cannot show you which blog post produced which booked call, you are not buying marketing. You are buying activity.

Three things fix this.

One. Publish a shared conversion dashboard from day one.
Two. Tie every URL to a named conversion event.
Three. Report on booked revenue, not impressions.

One of our clients, Northstar Home Services in Austin, booked 22 new service calls from organic search in the first month after we tied their blog posts to their ServiceTitan pipeline.

If your agency cannot do this, they are the wrong agency.

Comment below if you want the exact 10-asset foundation we build for every client.
```

## Feeding this asset to an AI agent

```text
Load /10-brand-brain/templates/social-post.md and the relevant /10-brand-brain/playbooks/[channel].md.

Write the post following the channel's shape, length, and voice rules.

Run the pre-publish checklist. Return the post ready to schedule.
```

Reference paths: `/10-brand-brain/templates/social-post.md`, `/10-brand-brain/playbooks/`, `/01-icp/ICP.md`, `/01-icp/VOICE-OF-CUSTOMER.md`, `/02-voice/VOICE.md`, `/09-data/TOP-PERFORMERS.md`.
