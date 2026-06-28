{ inputs, ... }:

let
  utils = inputs.nixCats.utils;
in
{
  imports = [
    inputs.nixCats.homeModule
  ];

  config = {
    nixCats = {
      enable = true;

      packageNames = [ "myHomeModuleNvim" ];

      luaPath = ./nvim;

      addOverlays = [
        (utils.standardPluginOverlay inputs)
      ];

      categoryDefinitions.replace = { pkgs, ...}:
        let
          customColorschemes = import ./colorschemes.nix {
            inherit pkgs;
          };
        in
        {
          startupPlugins = {
            colorschemes = with pkgs.vimPlugins; [
              kanagawa-nvim
            ] ++ [
              customColorschemes.vesper
              customColorschemes.nvimgelion
            ];

            lazy = with pkgs.vimPlugins; [
              lze
            ];
          };

          optionalPlugins = {
            tools = with pkgs.vimPlugins; [
              themery-nvim
              oil-nvim
              flash-nvim
              telescope-nvim
              plenary-nvim
            ];
          };

          lspsAndRuntimeDeps = {
            tools = with pkgs; [
              ripgrep
              fd
            ];
          };

        };

      packageDefinitions.replace = {
        myHomeModuleNvim = { pkgs, ... }: {
          settings = {
            aliases = [ "vim" "nvim" ];
          };

          categories = {
            colorschemes = true;
            lazy = true;
            tools = true;
          };
        };
      };
    };
  };
}
