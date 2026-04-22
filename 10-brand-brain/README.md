# 10, Agent Operating System ("Brand Brain")

The Intelligence Layer closes here. Nine folders built up the raw material. This folder compresses them into a system any AI agent can load, reuse, and extend.

## What this layer does

This folder is where the foundation meets the agent. It holds the single master prompt, the reusable templates, the per-channel playbooks, the multi-touch campaign recipes, and the specialized prompt library. An agent that loads this folder stops asking for context on every task. It just works.

## Files in this folder

- `BRAND-BRAIN.md`, The master index and the master system prompt. The file you paste into an AI assistant's context window.
- `templates/`, Fill-in-the-blank content templates (`email-nurture.md`, `landing-page.md`, `social-post.md`, `blog-post.md`, `one-pager.md`).
- `playbooks/`, Per-channel playbooks (`linkedin.md`, `email.md`, `blog.md`, `x.md`, `quora.md`).
- `campaigns/`, Multi-touch campaign recipes (`product-launch.md`, `nurture.md`, `re-engagement.md`, `seo-sprint.md`).
- `prompts/`, Production prompts (`system-prompt-core.md`, `blog-writer.md`, `email-writer.md`, `social-writer.md`, `ad-writer.md`).

## Build order inside this layer

1. Write `BRAND-BRAIN.md` only after folders 01 through 09 are populated. The master prompt aggregates them.
2. Fill in `prompts/system-prompt-core.md`. It is the anchor prompt every specialized prompt inherits.
3. Build `templates/` next. Templates standardize format. Playbooks standardize cadence.
4. Build `playbooks/` and `campaigns/` last.

## How this folder is loaded into an agent

- **Claude Projects:** Attach the entire `marketing-assets/` folder to a Project. Paste `BRAND-BRAIN.md` as the system prompt.
- **ChatGPT custom contexts (Projects, Custom GPTs):** Upload the folder. Paste `BRAND-BRAIN.md` in the instructions.
- **Gemini Gems:** Paste `BRAND-BRAIN.md` as the Gem's behavior. Upload the rest as knowledge.
- **Zapier/Make/n8n:** Load the relevant files per task. Load `BRAND-BRAIN.md` on every run.
- **Custom agent stack:** Read the repo contents at runtime. Pass the current task's requested files into the prompt.

Part of M10: The Marketing Foundation 10 by imFORZA.
