echo "========== macOS detected =========="

# Idempotently symlinks a dotfiles config into place. If the destination
# already exists as a real file/directory (e.g. created by an app's first
# run, like Karabiner-Elements), it's backed up with a timestamp before the
# symlink is created. Safe to re-run.
link_config() {
  local src="$1"
  local dest="$2"

  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    local backup="${dest}.bak.$(date +%Y%m%d%H%M%S)"
    echo "⚠️  $dest already exists and is not a symlink, backing up to $backup"
    mv "$dest" "$backup"
  fi

  mkdir -p "$(dirname "$dest")"
  ln -fs "$src" "$dest"
}

echo "∙ Symlinking karabiner configuration"
link_config "$PWD/.config/karabiner" "$HOME/.config/karabiner"
