{ ... }:

{
  imports = [
    ./aliases.nix
    ./zprofile.nix
    ./plugins.nix
  ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
  };
}
