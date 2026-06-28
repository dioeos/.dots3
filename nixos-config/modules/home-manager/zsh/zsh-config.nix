{ ... }:

{
  imports = [
    ./aliases.nix
    ./zprofile.nix
    ./startup.nix
  ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
  };
}
