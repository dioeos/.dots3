{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    disko.url = "github:nix-community/disko";
    disko.inputs.nixpkgs.follows = "nixpkgs";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { self, nixpkgs, ... }@inputs: 
    
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations.default = nixpkgs.lib.nixosSystem {
       extraSpecialArgs = {inherit inputs;};
       modules = [
         ./configuration.nix
         inputs.disko.nixosModules.disko
         inputs.home-manager.nixosModules.default
       ];
      };
    };
}
