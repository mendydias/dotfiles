#!/usr/bin/bash

echo "This provisioning script needs to be run with elevated permissions."

dnf -y install \
	neovim \
	ripgrep \
	fzf \
	zoxide \
	eza \
	batcat;

curl -sS https://starship.rs/install.sh | sh
