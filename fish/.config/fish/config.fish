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

    # displays an intro message
    set -g fish_greeting "Hello & thank you for believing that I have good enough dotfiels for you to use
Also, open $XDG_CONFIG_HOME/fish/config.fish & edit the second to last line to change this greeting"
end
