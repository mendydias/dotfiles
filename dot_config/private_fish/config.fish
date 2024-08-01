# setup prompt

starship init fish | source

# setup path

set -x PATH $PATH $HOME/.local/bin

# set editor

set -x EDITOR nvim

# set up keychain

if status --is-interactive
    keychain --eval --quiet $HOME/.ssh/id_ed25519 | source
end
