<img src="https://cdn.navid.media/shared/tool-logos/vscode.png" alt="VS Code" width="88">

# VS Code Setup Guide

[![License](https://img.shields.io/badge/License-MIT-green)](./LICENSE)
[![YouTube](https://img.shields.io/badge/YouTube-@thenavidm-red?logo=youtube&logoColor=white)](https://youtube.com/@thenavidm?sub_confirmation=1)
[![X](https://img.shields.io/badge/X-@thenavidm-black?logo=x)](https://x.com/thenavidm)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-thenavidm-0A66C2?logo=linkedin&logoColor=white)](https://linkedin.com/in/thenavidm)

A complete VS Code setup for running Claude Code. One click installs the whole thing.

VS Code is a free app from Microsoft, built for writing code. You will not be writing any.

Think of it as a fast window onto your files, which is exactly what makes it a good home for an AI agent. You see every file the agent touches. You keep your own documents open beside it. You run Claude, Codex and Gemini at the same time, in the same window.

Out of the box it behaves like the code editor it is, and that gets in the way. Word wrap is off, so long paragraphs run off the right edge. Autosave is off. Files open in preview tabs that quietly replace each other. Markdown shows up as raw text. The minimap, breadcrumbs, sticky scroll and lightbulb hints are all on, and all in your way.

The link in step 2 fixes every one of those, and adds the theme and the 9 extensions, in one step.

Built and maintained by [Navid Moazzez](https://navid.me?utm_source=github&utm_medium=readme&utm_campaign=vscode-setup-guide).

> **Stuck at any point, ask Claude.** Copy this page into Claude, say which step you're on, and have it explain the part that isn't landing. This works before you have installed anything, from your phone or the web.

## VS Code or the desktop app 🖥️

Both are solid. It comes down to what you want out of it.

The Claude desktop app has come a long way. Its Code tab works on your local files directly, with a file editor, a terminal, diff review, and parallel sessions that each get their own copy of the project. It runs the same engine as the command line and reads the same `CLAUDE.md`, skills and connectors. If Claude is the only agent you use, it is a good place to work and there is nothing to set up.

This setup is for the other case. VS Code lets you run Claude, Codex and Gemini in one window on the same folder, so you can put a second agent on the first one's work and have it checked by something that did not write it.

You also get the rest of the editor around it. Markdown renders as you type. Word documents and PDFs open in place instead of bouncing you to another app. The theme stops it looking like a terminal.

Same Claude, same account, same subscription, either way.

## What you get 🎁

1. **Claude Code in a panel**, with your files visible next to it instead of hidden behind an app.
2. **3 agents in one window.** Claude does the work, Codex reviews it and gives you GPT Image 2 in the editor, Gemini is there when you want a third read.
3. **Markdown that looks like Notion.** Type `/` for headings, lists, and dividers. Your notes stop looking like raw code.
4. **Word, Excel, PowerPoint and PDF open in place**, so you're not bouncing between apps to read one file.
5. **A quiet editor.** No minimap, no breadcrumbs, no autocomplete popping up mid-sentence, no spellcheck squiggles under every proper noun.
6. **Safe hands-off mode.** Claude runs the harmless commands without asking and still stops at anything that deletes or downloads.

## Install ⚡

**1. Get VS Code.** Download it from [code.visualstudio.com](https://code.visualstudio.com). It's free, and the big blue button picks the right version for your computer. Already have it? Skip to step 2.

**2. Import the setup.** [Click here to import the profile](https://creatorschool.link/vscodesetup). Your browser opens, you click "Import Profile in Visual Studio Code", VS Code opens, you click Import. Every extension installs itself and the whole look applies.

You'll know it worked when the editor turns dark and quiet, the file icons change, and Claude appears in a panel across the bottom.

The link doesn't change. When the setup is updated, the same link serves the new version, so you can re-import any time.

**3. Sign in to Claude.** Open the Claude Code panel at the bottom and sign in with your Claude account. A Pro or Max subscription works. You don't need an API key.

That's the whole install. Steps 4 and 5 are optional and take 2 minutes each.

**4. Sign in to Codex and Gemini** if you want the other 2 agents. Codex comes with a paid ChatGPT plan, Gemini Code Assist has a free tier.

**5. Open a folder.** File → Open Folder, and pick one. This is the part people miss: VS Code is built around a folder, and Claude reads everything inside the one you open. Make a fresh folder for your first week so you're not pointing an agent at anything that matters.

It lands as a separate profile, so it never touches your existing VS Code. To switch in or out, click the gear in the bottom-left corner and choose Profiles.

## What's inside 📦

9 extensions, each installable straight from the marketplace. Every description below came from the extension's own marketplace page, checked July 2026.

| Extension | Publisher | What it does |
|---|---|---|
| [Claude Code](https://marketplace.visualstudio.com/items?itemName=anthropic.claude-code) | Anthropic | The main one. Claude in a panel, reading and editing the files in your folder. 21.7M installs. |
| [Codex](https://marketplace.visualstudio.com/items?itemName=openai.chatgpt) | OpenAI | OpenAI's agent in the same window. Good for reviewing what Claude wrote and for reaching GPT Image 2 without leaving the editor. Comes with a paid ChatGPT plan. 12.3M installs. |
| [Gemini Code Assist](https://marketplace.visualstudio.com/items?itemName=google.geminicodeassist) | Google | Google's agent, for a third opinion. Has a free tier. 4.9M installs. |
| [Min Theme](https://marketplace.visualstudio.com/items?itemName=miguelsolorio.min-theme) | Miguel Solorio | A minimal theme in dark and light. This setup opens in Min Dark. 614K installs. |
| [Symbols](https://marketplace.visualstudio.com/items?itemName=miguelsolorio.symbols) | Miguel Solorio | Quiet file icons by the same person who makes Min, so the sidebar matches the theme instead of shouting over it. 893K installs. |
| [SlashMD](https://marketplace.visualstudio.com/items?itemName=slashmd.slashmd) | SlashMD | A Notion-style block editor for markdown files. This is the one that makes your notes readable. Newest of the 9 at 2.7K installs, so expect rough edges. |
| [Office Viewer](https://marketplace.visualstudio.com/items?itemName=cweijan.vscode-office) | Database Client | Opens Word, Excel, PowerPoint and PDF files inside the editor. 1.4M installs. |
| [Live Preview](https://marketplace.visualstudio.com/items?itemName=ms-vscode.live-server) | Microsoft | Runs a local server so you can see a web page as you change it. Useful the day you make anything for the web. 13.2M installs. |
| [Pixel Agents](https://marketplace.visualstudio.com/items?itemName=pablodelucca.pixel-agents) | Pablo De Lucca | Your Claude Code agents as pixel-art characters wandering an office while they work. Remove it if you don't want it. 78K installs. |

## The settings ⚙️

The extensions are half of it. The rest is turning off the things a code editor does that get in the way when you're writing.

**Autocomplete is off in markdown and YAML.** In code, a popup suggesting the rest of your word helps. Mid-sentence it interrupts you. Spellcheck squiggles and YAML validation are off in those files too.

**Word wrap is on.** Long paragraphs wrap to the window instead of running off the right edge.

**The clutter is gone.** No minimap down the right side, no breadcrumb trail above the editor, no sticky headers, no lightbulb hints. None of it helps when the file is prose.

**Files open as real tabs.** By default VS Code opens files in italics and the next file replaces the last one. That's off. Every file you open stays open.

**SlashMD is set as the editor for `.md` files.** Office Viewer also claims markdown, and with both installed and no instruction, VS Code picks whichever loads first. This setting makes it always SlashMD, so your notes open as a Notion-style page rather than raw text.

**Autosave after 1 second**, font size 14, line height 1.7, and a bit of padding at the top so text isn't jammed against the edge.

The [full settings file](./settings/settings.json) is commented line by line.

## Permissions 🔐

Claude Code asks permission before it runs a command. Approving every `ls` gets old fast, so this setup turns on terminal auto-approve with a rule list.

Reading commands go through without asking: `ls`, `cat`, `grep`, `git status`, `git diff`, `npm list` and about 80 more. Anything that deletes, downloads, or changes permissions is refused every time: `rm`, `curl`, `wget`, `kill`, `chmod`, `eval`. Global auto-approve stays off.

The result is that Claude keeps moving without stopping to ask, and still cannot delete your files.

Point it at a fresh folder while you're learning anyway. Don't open your Documents folder and walk away.

If you'd rather approve everything yourself, turn terminal auto-approve off in the Claude Code panel settings.

## Prefer light mode ☀️

Min ships both. Press `Cmd + Shift + P` (Windows: `Ctrl + Shift + P`) to open the Command Palette, a search bar for every command in the app. Type `theme`, choose "Preferences: Color Theme", then pick Min Light. Same 3 steps to go back.

## If you get stuck 🆘

Copy this page into Claude and ask about whatever step you're on:

```
I'm following this VS Code setup guide and I'm stuck on [step].
Here's what I'm seeing: [describe it or paste a screenshot].
Walk me through it and explain what each part does.
```

## Cursor 🧭

Cursor is VS Code underneath, so all of this works there the same way. The only difference is the import link, which opens in VS Code. In Cursor, install the extensions from the sidebar and paste [settings/settings.json](./settings/settings.json) into your settings.

## Requirements ✅

- A Mac or Windows computer
- [VS Code](https://code.visualstudio.com), free
- A Claude Pro or Max subscription for [Claude Code](https://claude.com/claude-code). No API key needed.
- Optional: a paid [ChatGPT](https://chatgpt.com) plan for Codex, a [Google](https://codeassist.google) account for Gemini Code Assist

## What's in this repo 📂

```
vscode-setup-guide/
├── README.md              this guide
├── profile/               the one-click import file
├── settings/              settings.json, commented
└── scripts/install.sh     manual install if the link fails
```

## About the author 👋

Navid Moazzez is a leading AI business strategist, and the host of the AI Creator Summit, watched by 100,000+ creators. He helps creators and founders master AI and build their own AI Operating System (AI OS) to automate their business and life. This is the VS Code setup he runs Claude Code and every other AI agent in.

**Links**

- Personal website: [navid.me](https://navid.me?utm_source=github&utm_medium=readme&utm_campaign=vscode-setup-guide)
- Store: [navid.bio](https://navid.bio?utm_source=github&utm_medium=readme&utm_campaign=vscode-setup-guide)
- Navid Media: [navid.media](https://navid.media?utm_source=github&utm_medium=readme&utm_campaign=vscode-setup-guide)
- YouTube: [@thenavidm](https://youtube.com/@thenavidm?sub_confirmation=1) and [@thenavidai](https://youtube.com/@thenavidai?sub_confirmation=1)
- X: [@thenavidm](https://x.com/thenavidm)
- Instagram: [@thenavidm](https://instagram.com/thenavidm)
- LinkedIn: [thenavidm](https://linkedin.com/in/thenavidm)

If this is useful, star the repo and come say hi on [X](https://x.com/thenavidm).

## License ⚖️

[MIT](./LICENSE). Free to use, modify, and share.

Not affiliated with, endorsed by, or connected to Microsoft.

---

© 2026 [NM Media](https://navid.media?utm_source=github&utm_medium=readme&utm_campaign=vscode-setup-guide). Made with ❤️ by [Navid Moazzez](https://navid.me?utm_source=github&utm_medium=readme&utm_campaign=vscode-setup-guide).
