# setup prompt

starship init fish | source

# setup path

set -x PATH $PATH $HOME/.local/bin

fish_add_path $HOME/.config/emacs/bin/

# set editor

set -x EDITOR emacs

# set up keychain

if status --is-interactive
    keychain --eval --quiet $HOME/.ssh/id_ed25519 | source
end
