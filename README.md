# BrainKit Starter

[![MIT License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Stars](https://img.shields.io/github/stars/sockshead/brainkit-starter?style=social)](https://github.com/sockshead/brainkit-starter/stargazers)

*"Your AI assistant that actually knows you."*

---

## The story

I'm Johannes — a software engineer who built the system I wish existed for every consultant, coach, and creator I know. My knowledge was scattered across 6 apps. I needed an AI that knew my projects, my clients, my voice — and kept knowing them as my work changed. This is that system, open-sourced.

— Johannes

---

## What this is

An Obsidian vault template pre-configured for Claude Code. `CLAUDE.md` routes your notes, voice captures, and questions to the right place automatically. Your AI stops being generic.

---

## Why AI systems decay

Your CLAUDE.md is sharp in month 1. You configured it carefully. It knows your projects, your routing rules, your voice.

Then month 3 arrives. You finished the beta. But your CLAUDE.md still routes everything to `Projects/Beta/`. You added three new projects but never updated the routing table. Your AI starts filing investor notes in the wrong folder. You don't notice for two weeks.

This is the pattern: **AI context decays silently.** It doesn't break loudly — it just drifts until it's routing your work to dead projects and missing the live ones.

BrainKit is your maintenance contract. Every month: a Brain Report auditing what's stale, a CLAUDE.md update reflecting your current reality, and a system that actually knows what you're working on today.

---

## Who this is for

- **Consultants and advisors** — project notes, client context, engagement tracking
- **Coaches** — session notes, client history, program management
- **Course creators and educators** — content pipeline, video ideas, audience insights
- **Researchers and writers** — literature notes, drafts, reference management
- **Startup founders and operators** — product notes, investor pipeline, pilot customer tracking

If you've tried building a second brain before and it fell apart — this is for that.

Not technical? [BrainKit Kickstart](https://brainkit.so) sets it up for you.

---

## Quick Start

> **Not a developer?**
> Skip steps 3–5. Book a [BrainKit Kickstart](https://brainkit.so) and Johannes configures your vault in a 60-min session — no terminal required.

1. Fork this repo and clone it locally
2. Open the folder in Obsidian (as a vault)
3. Install Claude Code CLI: `npm install -g @anthropic/claude-code`
4. Edit `CLAUDE.md` with your name, projects, and routing rules

---

## What's inside

```
brainkit-starter/
├── CLAUDE.md          # AI routing instructions — edit this first
├── setup.sh           # One-command setup for macOS
├── Inbox/             # Unprocessed captures — the fallback destination
├── Daily/             # Daily notes, routed from voice
├── Projects/          # One folder per active project
├── Areas/             # Ongoing responsibilities
├── Resources/         # Reference material
└── Archive/           # Completed work — never edited by AI
```

---

## Voice pipeline: capture from anywhere

Send a voice note and it lands in your vault — routed, tagged, and ready — before you finish your walk.

The voice pipeline connects Telegram to Whisper transcription to vault filing. It runs locally on your Mac via a launchd background service.

**Self-setup requires:** [Takopi](https://github.com/takopi), Whisper (local), launchd config. Full instructions in `VOICE_SETUP.md`. Or book a [Concierge plan](https://brainkit.so) and it's active from month 2 (Full Stack gets it on day 1).

---

## Want this done for you?

Setting up `CLAUDE.md` correctly takes trial and error.
Keeping it current as your work evolves takes monthly discipline.

**BrainKit** sets it up for you, and maintains it every month.

→ [Kickstart — $297 one-time](https://brainkit.so) — Johannes configures your system, 60-min onboarding call, you own it.
→ [Concierge — $247/mo](https://brainkit.so) — Full setup in month 1, monthly Brain Report + CLAUDE.md updates. Your AI gets smarter every month.

[Book a free discovery call →](https://brainkit.so/#booking)

---

## Contributing

BrainKit Starter is the free foundation of the BrainKit system. See [CONTRIBUTING.md](CONTRIBUTING.md) for how to contribute.

## License

[MIT](LICENSE) — fork it, modify it, use it however you want.
