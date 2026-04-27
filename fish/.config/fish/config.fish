# Environment variables
set -xg LANG en_NZ.UTF-8
set -xg EDITOR hx
set -xg VISUAL hx

if status is-interactive
    # aliases
    alias bat="bat -p"
    alias eza="eza --icons --git --icons=auto --group-directories-first -gh"
    alias clang="clang -Wall -Wextra -Wpedantic -Wconversion -Wshadow"
    # abbreviations
    # Programming languages
    abbr -a -- rust cargo run
    abbr -a -- release cargo run --release
    abbr -a -- release-c clang -O3

    # Quality of life
    abbr -a -- cat bat
    abbr -a -- ls eza
    abbr -a -- tree eza -T
    abbr -a -- trash gio trash

    # Helix key bindings
    fish_helix_key_bindings

    # Setting up zoxide
    zoxide init fish | source

    # setting up starship
    starship init fish | source

    # running fastfetch
    fastfetch

    # displays an intro message
    set -g fish_greeting "Hello & thank you for believing that I have good enough dotfiles for you to use
Also, open $XDG_CONFIG_HOME/fish/config.fish & edit the second to last line to change this greeting"
end
