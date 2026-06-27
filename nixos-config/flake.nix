{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    disko.url = "github:nix-community/disko";
    disko.inputs.nixpkgs.follows = "nixpkgs";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    xremap.url = "github:xremap/nix-flake";
  };

  outputs = { self, nixpkgs, ... }@inputs: 
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
       inherit system;

       specialArgs = {
         inherit inputs;
       };

       modules = [
         ./hosts/merle/configuration.nix
         inputs.disko.nixosModules.disko
         inputs.home-manager.nixosModules.default
	 inputs.xremap.nixosModules.default
       ];
      };
    };
}
