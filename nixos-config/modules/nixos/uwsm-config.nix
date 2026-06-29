{ pkgs, ... }:

{
  programs.uwsm = {
    enable = true;
    package =pkgs.uwsm;
  };
}
