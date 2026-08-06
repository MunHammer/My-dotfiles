{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = builtins.getEnv "USER";
  home.homeDirectory = builtins.getEnv "HOME";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "26.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    nixd
    nixfmt
    shfmt
    superhtml
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  xdg.configFile = {
    # misc
    "fastfetch/config.jsonc".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/fastfetch.jsonc;
    "btop/btop.conf".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/btop.conf;
    "starship.toml".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/starship.toml;
    "zellij/config.kdl".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/zellij.kdl;
    # fish
    "fish/config.fish".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/fish/config.fish;
    "fish/fish_plugins".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/fish/fish_plugins;
    # niri
    "niri/binds.kdl".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/niri/binds.kdl;
    "niri/config.kdl".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/niri/config.kdl;
    "niri/fancy.kdl".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/niri/fancy.kdl;
    # kitty
    "kitty/kitty.conf".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/kitty/kitty.conf;
    "kitty/specifics/bell.conf".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/kitty/specifics/bell.conf;
    "kitty/specifics/cursor.conf".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/kitty/specifics/cursor.conf;
    "kitty/specifics/fonts.conf".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/kitty/specifics/fonts.conf;
    "kitty/specifics/mouse.conf".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/kitty/specifics/mouse.conf;
    "kitty/specifics/performance.conf".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/kitty/specifics/performance.conf;
    "kitty/specifics/scrollback.conf".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/kitty/specifics/scrollback.conf;
    "kitty/specifics/style.conf".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/kitty/specifics/style.conf;
    "kitty/specifics/tab_bar.conf".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/kitty/specifics/tab_bar.conf;
    "kitty/specifics/windows.conf".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/kitty/specifics/windows.conf;
    # helix
    "helix/helix.scm".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/helix/helix.scm;
    "helix/init.scm".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/helix/init.scm;
    "helix/config.scm".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/helix/config.scm;
    "helix/config.toml".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/helix/config.toml;
    "helix/keymaps.scm".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/helix/keymaps.scm;
    "helix/languages.scm".source = config.lib.file.mkOutOfStoreSymlink ~/.dotfiles/helix/languages.scm;
  };
  home.file = {
    ".bashrc".source = ~/.dotfiles/bashrc;
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
