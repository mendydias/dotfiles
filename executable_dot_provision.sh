#!/usr/bin/bash

echo "Setting up dev container.."

mkdir $HOME/.custom-repos

cd $HOME/.custom-repos/

git clone --depth 1 https://github.com/junegunn/fzf.git 
./fzf/install

dnf -y install \
	git \
	neovim \
	ripgrep \
	zoxide \
	eza \
	bat;

curl -sS https://starship.rs/install.sh | sh

chezmoi init --apply git@github.com:mendydias/dotfiles.git

source $HOME/.zshrc

cd $HOME
