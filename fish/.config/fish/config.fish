# Environment variables
set -xg LANG en_NZ.UTF-8
set -xg EDITOR hx
set -xg VISUAL hx

if status is-interactive
    # aliases
    alias bat="batcat"
    alias eza="eza --icons --git --icons=auto --group-directories-first -gh"
    # abbreviations
    abbr -a -- cat bat
    abbr -a -- ls eza
    abbr -a -- tree eza -T

    # Helix key bindings
    fish_helix_key_bindings

    # Setting up zoxide
    zoxide init fish | source

    # setting up starship
    starship init fish | source

    # running fastfetch
    fastfetch
end
