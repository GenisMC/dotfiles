#!/bin/bash

# create ~/.config if not exists
if [ ! -d "$HOME/.config" ]; then
  mkdir "$HOME/.config"
fi

ln -sn "$(pwd)/starship.toml" "$HOME/.config/starship.toml"
ln -sn "$(pwd)/.zshrc" "$HOME/.zshrc"
ln -sn "$(pwd)/kitty" "$HOME/.config/kitty"
ln -sn "$(pwd)/tmux" "$HOME/.config/tmux"
ln -sn "$(pwd)/nvim" "$HOME/.config/nvim"
ln -sn "$(pwd)/.zsh" "$HOME/.zsh"
