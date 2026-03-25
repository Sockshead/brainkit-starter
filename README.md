# BrainKit Starter

[![MIT License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Stars](https://img.shields.io/github/stars/sockshead/brainkit-starter?style=social)](https://github.com/sockshead/brainkit-starter/stargazers)

**Your AI assistant that knows everything you know.**

---

## The problem

You take notes. Lots of them. Meeting notes, ideas, client conversations, course outlines, half-finished thoughts. They're scattered across Notion, Apple Notes, voice memos, and a dozen Google Docs.

Then you open ChatGPT and ask a question — and it gives you a generic answer because it has no idea who your clients are, what you're building, or what you decided last Tuesday.

Your AI assistant is useless because it doesn't have your context.

## The solution

BrainKit is a structured Obsidian vault paired with a `CLAUDE.md` routing file. Together they give Claude Code a complete picture of your world — your projects, your clients, your workflows — so it can answer questions, file notes, and surface information the way a real assistant would.

Instead of this:

> "What did I decide about the onboarding flow?" → [Claude has no idea]

You get this:

> "What did I decide about the onboarding flow?" → Claude reads your vault and replies: "In your Oct 12 meeting with Marcus, you decided to move the intake form before the discovery call. The action item was to update the Typeform by end of week."

No plugins. No subscriptions. Just a folder structure, a config file, and Claude Code CLI.

---

## How it works

**Three pieces:**

1. **Obsidian vault** — your notes live in a structured folder system (Inbox, Daily, Projects, Areas, Resources, Archive)
2. **CLAUDE.md** — a plain-text routing file that tells Claude who you are, what projects are active, and where to file every type of input
3. **Claude Code CLI** — the AI layer that reads your vault and acts on it

When you run `claude` inside your vault directory, Claude reads `CLAUDE.md` first. From that point it knows your name, your projects, and exactly where every note should go. You capture; Claude organizes.

---

## Folder structure

```
your-vault/
├── CLAUDE.md          # AI routing config — edit this with your info
├── Inbox/             # Unprocessed captures — the landing zone
├── Daily/             # Daily notes, one per day
├── Projects/          # One subfolder per active project
├── Areas/             # Ongoing responsibilities (health, finances, team)
├── Resources/         # Reference material worth keeping
└── Archive/           # Completed projects and old notes — read-only
```

**The rule:** everything gets filed. If Claude isn't sure where something goes, it lands in `Inbox/` and you deal with it later. Nothing gets lost.

---

## Quick demo

Open a terminal in your vault directory and run `claude`. Then try these:

**Capture a meeting note:**
> "I just had a call with Marcus. He wants to push the course launch to May and said the onboarding Typeform is confusing."

Claude routes this to `Projects/Course Launch/notes/` and `Projects/Client Onboarding/meetings/`, extracts any action items, and confirms what it filed.

**Retrieve information:**
> "What did I discuss with Marcus last week?"

Claude searches your vault and returns a summary with the source file.

**Morning check-in:**
> "What's on my plate today?"

Claude reads your recent Daily notes and open task lists and gives you a prioritized rundown.

**Evening review:**
> "Summarize today's activity."

Claude reviews everything logged today and surfaces anything that needs follow-up.

---

## Quick Start

**1. Fork this repo**

Click "Fork" at the top of this page. Your fork is your personal vault — keep it private if your notes are sensitive.

**2. Open in Obsidian**

Download [Obsidian](https://obsidian.md) (free). Open your forked folder as a vault. No plugins required to get started.

**3. Install Claude Code CLI**

```bash
npm install -g @anthropic/claude-code
```

You'll need an [Anthropic API key](https://console.anthropic.com). The free tier is enough to start.

**4. Edit CLAUDE.md with your info**

Open `CLAUDE.md` and replace Sarah Chen's details with your own:

- Your name and role
- Your active projects
- Any routing rules specific to your work

Then run `claude` inside your vault folder and start talking.

---

## CLAUDE.md explained

`CLAUDE.md` is the brain of this system. It has four sections:

| Section | What it does |
|---|---|
| **Identity** | Tells Claude who you are and what you do |
| **Active Projects** | Lists current projects so Claude knows what's relevant |
| **Routing Table** | IF/THEN rules for where every type of note goes |
| **Rules** | Hard constraints — what Claude must never do |

The routing table is the key piece. It turns Claude from a generic chatbot into an assistant that knows your system. The more specific you make it, the better it works.

---

## Want this done for you?

Setting up the vault is the easy part. The hard part is writing a `CLAUDE.md` that actually fits how you work, connecting it to your voice notes, and keeping it maintained as your projects change.

That's what [BrainKit](https://brainkit.so) is for.

**BrainKit paid service includes:**

- Done-for-you `CLAUDE.md` built around your actual workflow (we interview you)
- Voice-to-vault: speak your notes on your phone, they appear in Obsidian
- Monthly Brain Report: a summary of your vault activity and a suggested cleanup
- CLAUDE.md maintenance: we update your routing rules as your projects change
- Private setup call + 30 days of Slack support

You handle the thinking. We handle the filing.

[Learn more at brainkit.so](https://brainkit.so)

---

## License

MIT. Fork it, modify it, use it however you want. If you build something interesting on top of it, consider opening a PR.
