#!/usr/bin/env bash
# Manual install, for when the one-click profile link doesn't work.
# Installs the 9 extensions and copies the settings file into VS Code.
#
#   bash scripts/install.sh
#
# Your existing settings are backed up first. Nothing is deleted.

set -euo pipefail

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Find the code command, whether or not it's on your PATH.
if command -v code >/dev/null 2>&1; then
  CODE="code"
elif [ -x "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" ]; then
  CODE="/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code"
else
  echo "Can't find VS Code. Install it from https://code.visualstudio.com and run this again."
  exit 1
fi

EXTENSIONS=(
  anthropic.claude-code
  openai.chatgpt
  google.geminicodeassist
  miguelsolorio.min-theme
  miguelsolorio.symbols
  slashmd.slashmd
  cweijan.vscode-office
  ms-vscode.live-server
  pablodelucca.pixel-agents
)

echo "Installing ${#EXTENSIONS[@]} extensions."
for ext in "${EXTENSIONS[@]}"; do
  echo "  $ext"
  "$CODE" --install-extension "$ext" --force >/dev/null 2>&1 || echo "    failed, install it from the marketplace instead"
done

# Settings live in a different place on each operating system.
case "$(uname -s)" in
  Darwin) USER_DIR="$HOME/Library/Application Support/Code/User" ;;
  Linux)  USER_DIR="$HOME/.config/Code/User" ;;
  *)      USER_DIR="$APPDATA/Code/User" ;;
esac

mkdir -p "$USER_DIR"

if [ -f "$USER_DIR/settings.json" ]; then
  BACKUP="$USER_DIR/settings.json.backup-$(date +%Y%m%d-%H%M%S)"
  cp "$USER_DIR/settings.json" "$BACKUP"
  echo "Your old settings are saved at:"
  echo "  $BACKUP"
fi

cp "$REPO/settings/settings.json" "$USER_DIR/settings.json"

echo
echo "Done. Restart VS Code."
echo "Then open the Claude Code panel at the bottom and sign in."
