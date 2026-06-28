{ config, pkgs, inputs, ... }:

{
  imports = [
    ../../modules/home-manager/zsh/zsh-config.nix
    ../../modules/home-manager/ghostty/ghostty-config.nix
    ../../modules/home-manager/tmux/tmux-config.nix
    ../../modules/home-manager/nixcats/nixcats-config.nix
    ../../modules/home-manager/quickshell/quickshell-config.nix
    ../../modules/home-manager/niri/niri-config.nix
  ];

  home.username = "dio";
  home.homeDirectory = "/home/dio";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
