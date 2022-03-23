echo "========== INSTALLING tylerwillingham/dotfiles =========="

if [ ! -d $HOME/.oh-my-zsh ]; then
  echo "∙ Installing oh-my-zsh"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

echo "∙ Overriding $HOME/.zshrc"
ln -fs "$PWD/zshrc" "$HOME/.zshrc"

if [ ! -f "$HOME/.zshenv" ]; then
  echo "✨ Initializing empty $HOME/.zshenv"
  touch "$HOME/.zshenv"
fi

if command -v tmux &> /dev/null; then
  echo "∙ Copying tmux configuration"
  ln -fs "$PWD/tmux.conf" "$HOME/.tmux.conf"
else
  echo "⚠️ tmux is not installed, skipping configuration"
fi

echo "∙ Overriding neovim config"
ln -fs "$PWD/nvim" "$HOME/.config/nvim"

if ! command -v solargraph &> /dev/null; then
  echo "💎 Installing solargraph"
  sh -c "gem install --user solargraph"
fi
