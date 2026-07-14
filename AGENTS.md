# Global agent instructions

## General guidelines

- Be concise. Elaborating on new ideas is fine but your default responses should err on the side of brevity

## Coding guidelines

- NEVER add commit co-authorship
- Don't contribute to the following files unlesss explicitly asked to.
  They should be reserved for human additions by default:
  + README.md
  + CHANGELOG.md

## Voice profile

When you are authoring on behalf of me, read [`.agents/VOICE.md`](.agents/VOICE.md)

## Repository specifics

This is a personal dotfiles repo. Config files live here and are symlinked into `$HOME` (or backed up first). There is no build/test/lint tooling — changes are verified by re-running the install scripts, which are idempotent and safe to re-run.

- `install.sh` is the entrypoint. It dispatches to `macos-install.sh` (default) or `linux-install.sh` (when `apt-get` exists), then handles oh-my-zsh, `~/.zshrc`, and `~/.gitconfig`.
- The install scripts only symlink a subset of configs: `zshrc`, `gitconfig`, and `.config/karabiner`. Most editor configs (`nvim/`, `vimrc`, `lvim/`) are symlinked manually per README. `config/ghostty` is **not** wired into any install script yet — add it to `macos-install.sh` via `link_config` if that's the intent.
- Machine/language-specific env belongs in `~/.zshenv` (not tracked here); `zshrc` expects it to set themes and `EDITOR`.

## Claude skills

`claude/skills/` holds Claude Code skills, exposed as a plugin marketplace via `.claude-plugin/marketplace.json`. When adding, renaming, or removing a skill, keep both the skill's `.claude-plugin/plugin.json` and the top-level `marketplace.json` `plugins` array in sync — they duplicate name/description/version.
