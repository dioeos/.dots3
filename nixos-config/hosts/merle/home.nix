{ config, pkgs, inputs, ... }:

{
  imports = [
    ../../modules/home-manager/zsh/zsh-config.nix
  ];

  home.username = "dio";
  home.homeDirectory = "/home/dio";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
