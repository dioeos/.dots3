{ config, pkgs, inputs, ... }:

{
  imports = [
    # === TERMINAL ===
    ../../modules/home-manager/tmux/tmux-config.nix
    ../../modules/home-manager/ghostty/ghostty-config.nix
    ../../modules/home-manager/zsh/zsh-config.nix

    # === NEOVIM ===
    ../../modules/home-manager/nixcats/nixcats-config.nix

    # === BROWSERS ===
    ../../modules/home-manager/firefox/firefox-config.nix

    # === TOOLS ===
    ../../modules/home-manager/niri/niri-config.nix
    ../../modules/home-manager/pavucontrol/pavucontrol-config.nix
    ../../modules/home-manager/lazygit/lazygit-config.nix

    # === EXTRAS ===
    ../../modules/home-manager/quickshell/quickshell-config.nix
    ../../modules/home-manager/spotify/spotify-config.nix
    ../../modules/home-manager/discord/discord-config.nix
  ];

  home.username = "dio";
  home.homeDirectory = "/home/dio";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
