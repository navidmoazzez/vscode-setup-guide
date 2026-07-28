# VS Code Setup Guide

Run Claude Code in a window that doesn't fight you. The theme, the 9 extensions, every setting. **One click imports the whole thing.**

You don't need to know how to code. This is a place to write, plan, run a business, and talk to 3 AI agents at once, and it happens to be a code editor.

Free and MIT-licensed.

## Why not the desktop app

The Claude desktop app is slower than it should be, it crashes, and it goes down at moments when the same account works fine everywhere else. That's annoying but survivable.

The real problem is that you can't see anything. Your files aren't there. You can't open the document Claude just wrote and edit it. You can't have a second agent check its work. You're talking to something clever through a keyhole.

VS Code is free, made by Microsoft, and it's really just a fast window for working with files. Put Claude inside it and you get your whole workspace down the left, the document in the middle, and the agent in a panel at the bottom. Same Claude. Same subscription. Better room.

## What you get

1. **Claude Code in a panel**, with your files visible next to it instead of hidden behind an app.
2. **3 agents in one window.** Claude does the work, Codex reviews it and gives you GPT Image 2 in the editor, Gemini is there when you want a third read.
3. **Markdown that looks like Notion.** Type `/` for headings, lists, and dividers. Your notes stop looking like raw code.
4. **Word, Excel, PowerPoint and PDF open in place**, so you're not bouncing between apps to read one file.
5. **A quiet editor.** No minimap, no breadcrumbs, no autocomplete popping up mid-sentence, no spellcheck squiggles under every proper noun.
6. **Safe hands-off mode.** Claude runs the harmless commands without asking and still stops at anything that deletes or downloads.

## Install

**1. Get VS Code.** Download it from [code.visualstudio.com](https://creatorschool.link/vscode). It's free, and the big blue button picks the right version for your computer. Already have it? Skip to step 2.

**2. Import the setup.** [Click here to import the profile](https://creatorschool.link/vscodesetup). Your browser opens, you click "Import Profile in Visual Studio Code", VS Code opens, you click Import. Every extension installs itself and the whole look applies.

The link doesn't change. When the setup is updated, the same link serves the new version, so you can re-import any time.

**3. Sign in to Claude.** Open the Claude Code panel at the bottom and sign in with your Claude account. A Pro or Max subscription works. You don't need an API key.

That's the whole install. Steps 4 and 5 are optional and take 2 minutes each.

**4. Sign in to Codex and Gemini** if you want the other 2 agents. Codex comes with a paid ChatGPT plan, Gemini Code Assist has a free tier.

**5. Open a folder.** File → Open Folder, and pick one. This is the part people miss: VS Code is built around a folder, and Claude reads everything inside the one you open. Make a fresh folder for your first week so you're not pointing an agent at anything that matters.

It lands as a separate profile, so it never touches your existing VS Code. To switch in or out, click the gear in the bottom-left corner and choose Profiles.

## What's inside

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
| [Pixel Agents](https://marketplace.visualstudio.com/items?itemName=pablodelucca.pixel-agents) | Pablo De Lucca | Your Claude Code agents as pixel-art characters wandering an office while they work. Pure fun, delete it if you hate it. 78K installs. |

## The settings

The look is only half of it. The rest is tuning an editor built for code so it behaves for writing.

**Autocomplete is off in markdown and YAML.** In code, a popup suggesting the rest of your word is helpful. Mid-sentence it's infuriating. Spellcheck squiggles and YAML validation are off in those files too.

**Word wrap is on.** Long paragraphs wrap to the window instead of running off the right edge. If you write anything longer than a line, this is the setting you'd have missed.

**The clutter is gone.** No minimap down the right side, no breadcrumb trail above the editor, no sticky headers, no lightbulb hints. None of it helps when the file is prose.

**Files open as real tabs.** By default VS Code opens files in italics and the next file replaces the last one. That's off. Every file you open stays open.

**SlashMD is set as the editor for `.md` files.** This one isn't cosmetic. Office Viewer also claims markdown, and with both extensions installed and no instruction, VS Code picks whichever loads first. The setting makes it always SlashMD, which is the difference between your notes reading like Notion and reading like a text file.

**Autosave after 1 second**, font size 14, line height 1.7, and a bit of padding at the top so text isn't jammed against the edge.

The [full settings file](./settings/settings.json) is commented line by line.

## Permissions, and the one thing to be careful about

Claude Code asks permission before it runs a command. Approving every `ls` gets old fast, so this setup turns on terminal auto-approve with a rule list.

Reading commands go through without asking: `ls`, `cat`, `grep`, `git status`, `git diff`, `npm list` and about 80 more. Anything that deletes, downloads, or changes permissions is refused every time: `rm`, `curl`, `wget`, `kill`, `chmod`, `eval`. Global auto-approve stays off.

You get the hands-off feel without handing an agent an unguarded `rm` on day one.

That said: an agent editing files is still an agent editing files. Point it at a fresh folder while you're learning. Don't open your Documents folder and walk away.

If you'd rather approve everything yourself, turn terminal auto-approve off in the Claude Code panel settings. If you later want full bypass, that's a deliberate choice to make once you know what you're doing, not a default.

## Prefer light mode

Min ships both. Press `Cmd + Shift + P` (Windows: `Ctrl + Shift + P`) to open the Command Palette, which is a search bar for every command in the app and the most useful shortcut here by a distance. Type `theme`, choose "Preferences: Color Theme", then pick Min Light. Same 3 steps to go back.

## If you get stuck

Don't push through confused. Copy this page, paste it into Claude, and ask about whatever step you're on:

```
I'm following this VS Code setup guide and I'm stuck on [step].
Here's what I'm seeing: [describe it or paste a screenshot].
Walk me through it and explain what each part actually does.
```

That works before you've installed anything, from your phone or the web. You can't break much as long as you're working in a test folder.

## Cursor

Cursor is VS Code underneath, so all of this works there the same way. The only difference is the import link, which opens in VS Code. In Cursor, install the extensions from the sidebar and paste [settings/settings.json](./settings/settings.json) into your settings.

## Requirements

- A Mac or Windows computer
- [VS Code](https://code.visualstudio.com), free
- A Claude Pro or Max subscription for Claude Code. No API key needed.
- Optional: a paid ChatGPT plan for Codex, a Google account for Gemini Code Assist

## What's in this repo

```
vscode-setup-guide/
├── README.md              this guide
├── profile/               the one-click import file
├── settings/              settings.json, commented
└── scripts/install.sh     manual install if the link fails
```

## About the author

Navid Moazzez is the founder of [Creator School AI](https://creatorschool.ai), creator of [AI Creator OS](https://creatorschool.ai/ai-creator-os), and host of the [AI Creator Summit](https://creatorschool.ai/ai-creator-summit), watched by 100,000+ creators. He helps creators and founders master AI and build their own AI Operating System (AI OS). This is the VS Code setup he runs Claude Code and every other AI agent in.

## Links

- Creator School AI: [creatorschool.ai](https://creatorschool.ai)
- AI Creator OS: [creatorschool.ai/ai-creator-os](https://creatorschool.ai/ai-creator-os)
- AI Creator Summit: [creatorschool.ai/ai-creator-summit](https://creatorschool.ai/ai-creator-summit)
- Personal website: [navid.me](https://navid.me)
- Store: [navid.bio](https://navid.bio)
- YouTube: [@thenavidm](https://youtube.com/@thenavidm?sub_confirmation=1) and [@creatorschoolai](https://youtube.com/@creatorschoolai?sub_confirmation=1)
- X: [@thenavidm](https://x.com/thenavidm) and [@creatorschoolai](https://x.com/creatorschoolai)
- Instagram: [@thenavidm](https://instagram.com/thenavidm)
- LinkedIn: [thenavidm](https://linkedin.com/in/thenavidm)

## License

[MIT](./LICENSE). Free to use, modify, and share.

---

© 2026 [Creator School AI](https://creatorschool.ai) is a trademark of NM Media. Made with ❤️ by [Navid Moazzez](https://navid.me).
