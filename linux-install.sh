echo "========== linux detected =========="

apt-get update

echo "--- Installing zsh and oh-my-zsh"
apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "--- Installing neovim"
apt-get install -y neovim
