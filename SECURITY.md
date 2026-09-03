# Security

## Reporting a vulnerability

[Report it privately](https://github.com/thenavidm/vscode-setup-guide/security/advisories/new).
Please do not open a public issue for a security problem: an issue is visible to
everyone the moment you file it, including whoever would use the bug.

Include what you did, what happened, and what you expected. Reporters are
credited in the fix notes unless they would rather not be.

## What this repo does to your machine

There are no credentials here and nothing phones home. Three things touch your
computer, and it is worth knowing what each one does before you run it.

**The profile** (`profile/navid-vscode.code-profile`) is a VS Code profile. It
installs the extensions listed below, applies a theme, and sets the editor
settings in `settings/settings.json`. VS Code shows you what a profile contains
before you accept it.

**The settings** (`settings/settings.json`) change editor behaviour only: word
wrap, autosave, which files open how. Read the file; it is short and every line
is a documented VS Code setting.

**The install script** (`scripts/install.sh`) is the manual path for when the
one-click profile does not work. It calls `code --install-extension` for each
extension and copies the settings file into place. It backs up your existing
settings first and deletes nothing. Read it before running it, as you should
with any script that pipes into your shell.

## The extensions

The setup installs extensions published by Anthropic, OpenAI, Google and
third-party authors. Each runs with the permissions VS Code grants extensions,
which is broad: an extension can read and write files in your open folders and
make network calls.

That is a real trust decision and it is yours to make. The list is in the README
and in `scripts/install.sh`, every one is named, and you can install a subset
rather than all of them. Extensions update themselves from the VS Code
Marketplace after installation, so what you audit today is not frozen.

## What is out of scope

Vulnerabilities in VS Code itself, in the Marketplace, or in an extension
published by someone else belong to whoever maintains them. Report those
upstream. If an extension in this list turns out to be malicious, tell me and
the list changes.

## Good-faith research

Test against your own machine and your own accounts. Nothing here reaches
anyone else's systems, so there is no scenario where researching this repo
should affect another person.

## Supported versions

The latest commit on `main` is what is supported. This is a settings repo, not
a running service, so a fix means the profile and script change and you
re-import.
