{ pkgs, ... }:

{
  home.packages = with pkgs; [
    tig
  ];
}
