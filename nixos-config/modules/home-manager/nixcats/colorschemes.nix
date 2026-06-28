{ pkgs }:

# sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=

{
  vesper = pkgs.vimUtils.buildVimPlugin {
    pname = "vesper.nvim";
    version = "unstable";

    src = pkgs.fetchFromGitHub {
      owner = "datsfilipe";
      repo = "vesper.nvim";
      rev = "1717b1ad657c94bec3fc2bdebb0c55452d9fe46d";
      hash = "sha256-Tx621yTfTu3dLctXKPaJy6rZn2YvWP8eFAJoVvEeR/c=";
    };

    nvimSkipModule = [
      "init"
    ];
  };

  nvimgelion = pkgs.vimUtils.buildVimPlugin {
    pname = "nvimgelion";
    version = "unstable";

    src = pkgs.fetchFromGitHub {
      owner = "nyngwang";
      repo = "nvimgelion";
      rev = "28f3b71f8545ff002a1c08ca928799cdf660eccf";
      hash = "sha256-dZHN0fmfhl7qBQh/FRMVpj1i7oTgEXUX4xTnMwEdJAU=";
    };
  };
}
