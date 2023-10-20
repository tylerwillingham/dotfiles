# Tyler Willingham's dotfiles


## Prerequisite downloads

- **Font of choice:** [FiraCode](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode)
- **iTerm 2 theme:** [TokyoNight - Storm](https://github.com/folke/tokyonight.nvim/blob/main/extras/iterm_tokyonight_storm.itermcolors)

- Instal dependencies for telescope:
  - ripgrep - `brew install ripgrep`
  - fd - `brew install fd`

- Install LSPs
  + Ruby via [solargraph](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#solargraph)
  + Javascript (and typescript) via [tsserver](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#tsserver)
    * ESlint via [vscode-eslint-language-server](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#eslint)

## Shell

I'm still using oh-my-zsh for my zsh configuration. Set language/computer-specific dependencies in
`~/.zshenv`

```bash
brew install oh-my-zsh
```

```bash
ln -s ./zshrc ~/.zshrc
```

## Tmux

My tmux configuration is super basic and doesn't change much

```bash
brew install tmux
```

```bash
ln -s ./tmux.conf ~/.tmux.conf
```

## Editor details

I've recently switched from vim to neovim and in the process I'm evaluating how relevant individual
plugins are so there is not yet parity between my `vimrc` and `init.vim` examples.

### 1. Install neovim

```bash
brew install neovim
```

### 2. Symlink neovim config from this repo

```bash
ln -s ./nvim ~/.config/nvim
```

### 3. Install plugins

1. Boot neovim
2. Run `:PlugInstall`
