#!/usr/bin/env bash
# setup.sh — BrainKit Starter vault setup
# Usage: bash setup.sh
# Make executable: chmod +x setup.sh

set -e

# ---------------------------------------------------------------------------
# Colors
# ---------------------------------------------------------------------------
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BOLD='\033[1m'
RESET='\033[0m'

ok()   { echo -e "${GREEN}[OK]${RESET}    $1"; }
warn() { echo -e "${YELLOW}[WARN]${RESET}  $1"; }
err()  { echo -e "${RED}[ERROR]${RESET} $1"; exit 1; }
info() { echo -e "${BOLD}$1${RESET}"; }

# ---------------------------------------------------------------------------
# Banner
# ---------------------------------------------------------------------------
echo ""
echo -e "${BOLD}BrainKit Starter — Setup${RESET}"
echo "─────────────────────────────────────────"
echo ""

# ---------------------------------------------------------------------------
# Platform check
# ---------------------------------------------------------------------------
if [[ "$(uname)" != "Darwin" ]]; then
  warn "This script is designed for macOS. It may not work correctly on $(uname)."
  echo ""
fi

ARCH="$(uname -m)"
if [[ "$ARCH" == "arm64" ]]; then
  ok "Apple Silicon detected (arm64)"
else
  ok "Intel Mac detected (x86_64)"
fi

# ---------------------------------------------------------------------------
# Homebrew
# ---------------------------------------------------------------------------
info "Checking for Homebrew..."
if command -v brew &>/dev/null; then
  ok "Homebrew is installed ($(brew --version | head -1))"
else
  warn "Homebrew not found. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # Add Homebrew to PATH for Apple Silicon if needed
  if [[ "$ARCH" == "arm64" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi

  ok "Homebrew installed"
fi

# ---------------------------------------------------------------------------
# Git
# ---------------------------------------------------------------------------
info "Checking for git..."
if command -v git &>/dev/null; then
  ok "git is installed ($(git --version))"
else
  warn "git not found. Installing via Homebrew..."
  brew install git
  ok "git installed"
fi

# ---------------------------------------------------------------------------
# Vault directory
# ---------------------------------------------------------------------------
echo ""
info "Where should your BrainKit vault be created?"
echo -e "  Press ${BOLD}Enter${RESET} to use the default, or type a custom path."
echo ""
read -rp "Vault directory [~/BrainKit]: " VAULT_DIR
VAULT_DIR="${VAULT_DIR:-$HOME/BrainKit}"

# Expand ~ manually in case the user typed it
VAULT_DIR="${VAULT_DIR/#\~/$HOME}"

if [[ -d "$VAULT_DIR" ]]; then
  warn "Directory $VAULT_DIR already exists."
  read -rp "  Overwrite? This will delete existing contents. [y/N]: " CONFIRM
  if [[ "$CONFIRM" != "y" && "$CONFIRM" != "Y" ]]; then
    err "Aborted. Choose a different directory and run setup.sh again."
  fi
  rm -rf "$VAULT_DIR"
fi

# ---------------------------------------------------------------------------
# Clone
# ---------------------------------------------------------------------------
info "Cloning BrainKit Starter into $VAULT_DIR..."

REPO_URL="https://github.com/sockshead/brainkit-starter.git"

if git clone "$REPO_URL" "$VAULT_DIR"; then
  ok "Vault cloned to $VAULT_DIR"
else
  err "Clone failed. Check your internet connection and try again."
fi

# Remove the origin remote so this vault is standalone
git -C "$VAULT_DIR" remote remove origin 2>/dev/null || true

# ---------------------------------------------------------------------------
# Done
# ---------------------------------------------------------------------------
echo ""
echo "─────────────────────────────────────────"
echo -e "${GREEN}${BOLD}Setup complete.${RESET}"
echo ""
echo -e "${BOLD}Next steps:${RESET}"
echo ""
echo "  1. Open $VAULT_DIR in Obsidian"
echo "     Download Obsidian at https://obsidian.md (free)"
echo ""
echo "  2. Install Claude Code CLI"
echo "     npm install -g @anthropic/claude-code"
echo "     You'll need an Anthropic API key from https://console.anthropic.com"
echo ""
echo "  3. Edit CLAUDE.md"
echo "     Replace Sarah Chen's details with your own name, projects, and routing rules."
echo ""
echo "  4. Start your assistant"
echo "     cd \"$VAULT_DIR\" && claude"
echo ""
echo -e "  Want this done for you? Visit ${BOLD}https://brainkit.so${RESET}"
echo ""
