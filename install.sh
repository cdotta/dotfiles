#!/bin/sh
set -e
cd "$(dirname "$0")"
command -v brew >/dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew bundle --file Brewfile
mkdir -p ~/.config/git ~/.config/mise ~/.config/ghostty
ln -sf "$PWD/zshrc" ~/.zshrc
ln -sf "$PWD/zsh_plugins.txt" ~/.zsh_plugins.txt
ln -sf "$PWD/gitconfig" ~/.gitconfig
ln -sf "$PWD/git/ignore" ~/.config/git/ignore
ln -sf "$PWD/mise/config.toml" ~/.config/mise/config.toml
ln -sf "$PWD/ghostty/config" ~/.config/ghostty/config
ln -sf "$PWD/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
mise install
