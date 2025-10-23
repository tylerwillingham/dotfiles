echo "========== INSTALLING tylerwillingham/dotfiles =========="

if command -v apt-get &> /dev/null; then
  ./linux-install.sh
else
  ./macos-install.sh
fi

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

if [ ! -f "$HOME/.gitconfig" ]; then
  echo "∙ Setting up git configuration"
  ln -fs "$PWD/gitconfig" "$HOME/.gitconfig"
else
  echo "⚠️ ~/.gitconfig already exists, skipping"
fi


# if ! command -v solargraph &> /dev/null; then
#   echo "💎 Installing solargraph"
#   sh -c "gem install solargraph"
# fi

# if ! command -v sorbet &> /dev/null; then
#   echo "💎 Installing sorbet"
#   sh -c "gem install sorbet"
# fi
