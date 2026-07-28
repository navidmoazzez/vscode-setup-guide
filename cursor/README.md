# Cursor, and other VS Code forks

Cursor, Windsurf, VSCodium and Antigravity are all built on VS Code. The settings file works as-is. The one-click profile link does not, because `vscode.dev` profile links only open in VS Code itself.

Here's the manual path. It takes about 5 minutes.

## 1. Copy the settings

Open the Command Palette with `Cmd + Shift + P` (Windows: `Ctrl + Shift + P`), type `settings json`, and choose "Preferences: Open User Settings (JSON)".

Paste in the contents of [settings/settings.json](../settings/settings.json). If you already have settings you care about, merge rather than replace.

## 2. Install the extensions

These forks use [Open VSX](https://open-vsx.org) instead of Microsoft's marketplace, so availability differs. Search each one in the Extensions sidebar:

| Extension | On Open VSX |
|---|---|
| Claude Code | Yes |
| Min Theme | Yes |
| Symbols | Yes, published as `misolori/symbols` |
| SlashMD | Check |
| Office Viewer | Check |
| Live Preview | Check |
| Pixel Agents | Check |

Codex and Gemini Code Assist are published by OpenAI and Google to Microsoft's marketplace. Availability on forks changes often, so check rather than assume.

Anything missing can be installed from a `.vsix` file downloaded from the marketplace page, using "Install from VSIX" in the Extensions sidebar menu.

## 3. Worth knowing

Cursor has its own AI built in, with its own subscription. Running Claude Code inside Cursor means paying for both. That's a reasonable thing to do if you already have Cursor, and a strange thing to start doing if you don't.

If you're choosing today and you're not writing code for a living, plain VS Code is the simpler answer. It's free, the one-click link works, and Claude Code runs identically.
