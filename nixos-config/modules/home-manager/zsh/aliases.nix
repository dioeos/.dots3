{ ... }:

{
  programs.zsh.shellAliases = {
    rebuild-nix = "sudo nixos-rebuild switch --flake ~/dots/nixos-config#nixos";
    test-nix = "sudo nixos-rebuild test --flake ~/dots/nixos-config#nixos";
    vi = "nvim . ";
  };
}
