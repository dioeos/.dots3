{ inputs, ... }:

{
  imports = [
    inputs.nixCats.homeModule
  ];

  config = {
    nixCats = {
      enable = true;

      packageNames = [ "myHomeModuleNvim" ];

      luaPath = ./nvim;

      packageDefinitions.replace = {
        myHomeModuleNvim = { pkgs, ... }: {
          settings = {
            aliases = [ "vim" "nvim" ];
          };

          categories = { };
        };
      };
    };
  };
}
