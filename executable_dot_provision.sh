#!/usr/bin/bash

echo "This provisioning script needs to be run with elevated permissions."

dnf -y install \
	neovim \
	fzf \
	zoxide \
	eza \
	batcat;
