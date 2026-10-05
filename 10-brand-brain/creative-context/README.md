# Creative context: creator, audience, taste

Part of M10: The Marketing Foundation 10 by imFORZA.

The rest of the Brand Brain tells an AI agent who your brand is and what it sells. These three files tell it how your best work gets made: how you think when you write well, who is actually reading, and what "good" means to you.

Every company that uses AI to write should have them. They are part of Asset 10, not an optional extra, and `scripts/validate.sh` checks that they exist.

The idea comes from Kieran Flanagan's [The Creative Context OS](https://www.kieranflanagan.io/p/the-creative-context-os-how-to-stop). His argument, in short: an AI model with no context hands you the average of everything it has read. The writing comes out polished and interchangeable. A better prompt will not fix that. Context the model cannot get anywhere else will.

## The three files

| File | The question it answers | What you build it from | The M10 file it sits next to |
|---|---|---|---|
| [`creator.md`](creator.md) | How do you think and write when it is going well? | 5 to 10 pieces that feel most like you | `/02-voice/VOICE.md` says how the brand sounds. `creator.md` says how the person behind it builds an argument. |
| [`audience.md`](audience.md) | What does your reader already know, what bores them, and what earns their trust? | Five real readers, the people who engage, and research outside your own channels | `/01-icp/ICP.md` says who buys. `audience.md` says what those people respond to when they read. |
| [`taste.md`](taste.md) | What separates good from forgettable, and why? | Work you admire, plus the drafts you rejected and what you said about them | The quality bar every draft gets checked against. |

Keep each file to a page or two. A short file an agent actually reads beats a long one it skims.

## How to use them

Use the files before you write and after you draft. Do not use them to hand off the writing itself. The idea, the opinion, and the experience still come from you.

- **Before you write:** load all three and ask an AI assistant to pressure-test your rough idea. What does this reader already believe? What would be new to them? Which angles fit how you think?
- **After you draft:** load `taste.md` and `audience.md` and ask for a critique against your own rules. You do the rewrite.
- **For agents and automations:** add these three files to step 3 of the load order in [`BRAND-BRAIN.md`](../BRAND-BRAIN.md), right after `VOICE.md`, for any task that produces writing.

## Build order

1. `creator.md` first. It is the fastest to build because the evidence is your own work.
2. `audience.md` second. Start with five real people, not a persona.
3. `taste.md` last. It gets sharper once the other two exist, because you can see which rules are about you and which are about your reader.

Budget about an hour for each first version. They will improve every time you use them.

## Keep them current

- Every time you reject a draft, write one line in the rejection log in `taste.md`. A rejection is a taste rule you have not written down yet.
- Every time a reader replies, comments, or asks a question that surprises you, add it to `audience.md`.
- Re-read `creator.md` every quarter against your latest work. Styles drift.
- If you publish as a company rather than under a person's name, build `creator.md` for whoever sets the standard for your writing, usually the founder or your lead writer.
- If more than one person publishes under your brand, give each byline its own file (`creator-dana.md`, `creator-priya.md`) and share one `audience.md` and one `taste.md`.

## Prompts to build the first versions

Paste these into whatever AI assistant you use. Each one fills itself from the material you paste in after it.

Build `creator.md`:

```text
Read the pieces I paste below. I picked them because they feel the most like me, not because they performed the best. Fill in the creator.md template using only patterns you can point to in these pieces: how I build an argument, how I introduce an idea, the explanations and distinctions I keep coming back to, my sentence rhythm and tone, the formats I reach for, and how my style changes from channel to channel. Quote a short line as evidence for every pattern, and mark anything you are guessing.
```

Build `audience.md`:

```text
Below are notes on five real people who read my work, plus comments, replies, and questions my readers have sent me. Fill in the audience.md template: what they already understand, what they are tired of hearing, the problems that keep coming up, what earns their trust, and what would feel obvious versus new to them. Use their own words wherever you can, and mark anything the notes do not back up.
```

Build `taste.md`:

```text
Below are pieces of work I admire, each with a sentence on why, plus drafts I rejected and what I said about them. Turn this into the taste.md template: a short list of the rules I am actually applying, each with the reason behind it and a test someone could run on a draft. Do not add rules I did not show you.
```

## Prompts to use them

Before you write:

```text
Load creator.md, audience.md, and taste.md. Here is my rough idea: [your idea]. Tell me what this reader already believes about it, what would be new to them, and three angles that fit how I think. Do not write the piece.
```

After you draft:

```text
Load taste.md and audience.md. Review the draft below against every rule in taste.md and every test at the bottom of it. Quote each line that fails and name the rule it breaks. Then list anything this reader would find obvious. Do not rewrite the draft.
```

## Credits

Framework: Kieran Flanagan, [The Creative Context OS](https://www.kieranflanagan.io/p/the-creative-context-os-how-to-stop). Templates, prompts, and the M10 wiring: the [imFORZA](https://www.imforza.com?utm_source=github&utm_medium=repo&utm_campaign=marketing-assets) team.
