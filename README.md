# Prerequisites

## Shell
The Z shell [zsh](https://www.zsh.org/) needs to be installed.
Use your distribution's default package manager to install it.

### Ubuntu

`sudo apt update && sudo apt upgrade`

`sudo apt install zsh`

### Fedora

`sudo dnf update && sudo dnf upgrade`

`sudo dnf install zsh`

### Arch

`sudo pacman -Syu`

`sudo pacman -S zsh`

### Post-installation

Then use `sudo chsh -s /usr/bin/zsh $USER` to make the change persist across
restarts.

Run `systemctl reboot` to log into the newly installed zsh.

## Dot file management

This is important, as these files will not work without this:
- [chezmoi](https://www.chezmoi.io/install/)

After the installation completes, run the following:
`chezmoi init --apply "git@github.com:mendydias/dotfiles.git"`
(This assumes you have set up git with ssh.If not, then follow the instructions
in this link: [Setting git with ssh](https://docs.github.com/en/authentication/connecting-to-github-with-ssh))

## Podman and Distrobox

I use podman. You can use docker. The container management system is
irrelevant.

Use one of these to set up the container management system:
- [Podman](https://podman.io/docs/installation)
- [Docker](https://docs.docker.com/engine/install/ubuntu/)

Afterwards, install distrobox:
- [Distrobox](https://github.com/89luca89/distrobox?tab=readme-ov-file#installation)

You're all set!
