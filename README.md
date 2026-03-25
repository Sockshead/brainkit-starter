# BrainKit Starter

[![MIT License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Stars](https://img.shields.io/github/stars/sockshead/brainkit-starter?style=social)](https://github.com/sockshead/brainkit-starter/stargazers)

*"Your AI assistant that actually knows you."*

---

## The story

I built this while training 12+ hours a week for my first Ironman. My knowledge was scattered across 6 apps. I needed an AI that knew my projects, my clients, my voice — and kept knowing them as my work changed. This is that system, open-sourced.

— Johannes

---

## What this is

An Obsidian vault template pre-configured for Claude Code. `CLAUDE.md` routes your notes, voice captures, and questions to the right place automatically. Your AI stops being generic.

---

## Why AI systems decay

A `CLAUDE.md` that works in month 1 stops working in month 3. Projects end. New ones start. Priorities shift. Without maintenance, your AI keeps routing to dead projects and missing live ones. This template gives you a solid foundation. Keeping it current takes work.

---

## Quick Start

1. Fork this repo and clone it locally
2. Open the folder in Obsidian (as a vault)
3. Install Claude Code CLI: `npm install -g @anthropic-ai/claude-code`
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

## Want this done for you?

Setting up `CLAUDE.md` correctly takes trial and error.
The voice pipeline (Telegram to vault) requires Takopi + Whisper + launchd config.
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
