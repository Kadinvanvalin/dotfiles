#!/usr/bin/env bash
set -e

GIT_ROOT=$(git rev-parse --show-toplevel)

# Home dotfiles
ln -sf "$GIT_ROOT/.zshrc"                ~/.zshrc
ln -sf "$GIT_ROOT/.gitconfig"            ~/.gitconfig
ln -sf "$GIT_ROOT/.aliases"              ~/.aliases
ln -sf "$GIT_ROOT/.tmux.conf"            ~/.tmux.conf
ln -sf "$GIT_ROOT/.vimrc"                ~/.vimrc
ln -sf "$GIT_ROOT/.ideavimrc"            ~/.ideavimrc
ln -sf "$GIT_ROOT/.inputrc"              ~/.inputrc
ln -sf "$GIT_ROOT/.aerospace.toml"       ~/.aerospace.toml
ln -sf "$GIT_ROOT/.tool-versions"        ~/.tool-versions
ln -sf "$GIT_ROOT/.default-npm-packages" ~/.default-npm-packages
ln -sf "$GIT_ROOT/.gitignore"            ~/.gitignore

# .config entries
mkdir -p ~/.config/karabiner
ln -sf "$GIT_ROOT/.config/alacritty.toml" ~/.config/alacritty.toml
ln -sf "$GIT_ROOT/.config/nvim"           ~/.config/nvim
ln -sf "$GIT_ROOT/.config/sketchybar"     ~/.config/sketchybar
ln -sf "$GIT_ROOT/.config/starship.toml"  ~/.config/starship.toml
ln -sf "$GIT_ROOT/karabiner.json"         ~/.config/karabiner/karabiner.json

# Local bin
ln -sf "$GIT_ROOT/.local/bin" ~/.local/bin
