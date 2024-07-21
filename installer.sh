#!/bin/bash

# create ~/.config if not exists
if [ ! -d "$HOME/.config" ]; then
  mkdir "$HOME/.config"
fi

rm -rf ~/.zsh
rm -rf ~/.config/kitty
rm -rf ~/.config/tmux
rm -rf ~/.config/starship.toml
mv ~/.config/nvim ~/.config/nvim_bck
mv ~/.zshrc ~/.zshrc_bck

ln -sn "$(pwd)/starship.toml" "$HOME/.config/starship.toml"
ln -sn "$(pwd)/.zshrc" "$HOME/.zshrc"
ln -sn "$(pwd)/kitty" "$HOME/.config/kitty"
ln -sn "$(pwd)/tmux" "$HOME/.config/tmux"
ln -sn "$(pwd)/nvim" "$HOME/.config/nvim"
ln -sn "$(pwd)/.zsh" "$HOME/.zsh"

git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions
git clone https://github.com/marlonrichert/zsh-autocomplete.git ~/.zsh/zsh-autocomplete
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ~/.zsh/fast-syntax-highlighting

curl -sS https://starship.rs/install.sh | sh

sudo chsh -s /usr/bin/zsh
