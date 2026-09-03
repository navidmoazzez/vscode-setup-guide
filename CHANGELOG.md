# VS Code Setup Guide changelog

| Component | Version | Last Updated |
|-----------|---------|--------------|
| vscode-setup-guide | 1.0.0 | 2026-09-02 |

---

## 1.0.0

First release.

### One command

```bash
npx degit thenavidm/vscode-setup-guide vscode-setup && bash vscode-setup/scripts/install.sh
```

Installs the 9 extensions, applies the settings, and backs up whatever you had
first, printing the path so you can put it back. The profile file is still there
for anyone who would rather import it as a separate profile and leave their
current setup untouched.

### What it changes

Word wrap on, autosave on, preview tabs off so files stop replacing each other,
markdown rendering as you type, and the minimap, breadcrumbs, sticky scroll and
lightbulb hints off. Plus the theme and icons.

### The extensions

Claude Code, Codex and Gemini Code Assist, so you can run three agents on the
same folder and have one check another's work. Then Min theme, Symbols icons,
SlashMD for markdown, Office viewer for Word and PDF files, Live Server, and
Pixel Agents.

### The docs

A security policy covering what actually runs on your machine: the profile, the
settings file, the script, and nine extensions with broad permissions. That last
one is a real trust decision and the README names every extension so you can
install a subset instead.
