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

## Createing GitHub gists

Never default to creating a public gist - assume secret, or ask

## Repository specifics

Personal dotfiles repo: configs here are symlinked into `$HOME`. There is no build/test/lint tooling — verify changes by re-running `./install.sh` (idempotent, safe to re-run).

- `install.sh` is the entrypoint: dispatches to `macos-install.sh` (default) or `linux-install.sh` (when `apt-get` exists), installs oh-my-zsh if missing, symlinks `~/.zshrc` (via `ln -fs` — clobbers any existing file) and `~/.gitconfig` (skipped if one already exists), and touches an empty `~/.zshenv` if none exists.
- `link_config` (in `macos-install.sh`) is the safe symlink helper: it backs up a pre-existing real file/dir with a timestamp before linking. Currently only `.config/karabiner` uses it; `config/ghostty` is **not** wired in yet — add it via `link_config` if that's the intent.
- Only `zshrc`, `gitconfig`, and `.config/karabiner` are wired into install scripts. Editor configs (`nvim/`, `vimrc`, `lvim/`) are symlinked manually per README.
- Machine/language-specific env belongs in `~/.zshenv` (not tracked here); `zshrc` sources it and expects it to set `ZSH_THEME` and `EDITOR`.

## Claude skills

`claude/skills/` holds Claude Code skills, exposed as a plugin marketplace via `.claude-plugin/marketplace.json`. When adding, renaming, or removing a skill, keep both the skill's `.claude-plugin/plugin.json` and the top-level `marketplace.json` `plugins` array in sync — they duplicate name/description/version.
