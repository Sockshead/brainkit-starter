# Voice Pipeline Setup

Send a voice note from your phone. It lands in your vault — routed, tagged, and ready — before you get home.

> **Want this set up for you?** [BrainKit Concierge](https://brainkit-landing.pages.dev) includes voice pipeline setup from month 2 (Full Stack: day 1).

---

## How it works

1. You send a voice note to a Telegram bot
2. The bot transcribes it using Whisper (runs locally on your Mac)
3. Claude routes it to the right vault file based on your CLAUDE.md routing rules
4. The file is committed to your private git backup

---

## Prerequisites

- macOS (launchd service)
- [Takopi](https://github.com/takopi) — the Telegram-to-vault bridge
- Whisper — local transcription model
- A Telegram bot token (free, via @BotFather)
- Your vault already set up and Claude Code running

---

## Setup steps

> **Full setup guide coming soon.** This pipeline is currently delivered as part of BrainKit Concierge. Self-setup instructions are in progress.

If you want to set it up yourself now:

1. Install Takopi following its README
2. Configure your Telegram bot token in `.env`
3. Point Takopi's output path to your vault `Inbox/` folder
4. Create a launchd plist to keep it running in the background
5. Test with a voice note — check `Inbox/` for the transcription

Claude will route it automatically on next session, or you can trigger routing with: `Route everything in Inbox/`

---

## Getting help

- Open an issue: [github.com/sockshead/brainkit-starter/issues](https://github.com/sockshead/brainkit-starter/issues)
- Or book a [Concierge plan](https://brainkit-landing.pages.dev) and Johannes sets it up on the onboarding call
