{ pkgs }:

{
  fast-note-sync = pkgs.stdenv.mkDerivation {
    pname = "fast-note-sync";
    version = "2.1.9";

    dontUnpack = true;

    manifest = pkgs.fetchurl {
      url = "https://github.com/haierkeys/obsidian-fast-note-sync/releases/download/2.1.9/manifest.json";
      hash = "sha256:dbf379610f0d2b56734a4f8e5c85453a090e930652c71a040f23ee4230944d5d";
    };
    main = pkgs.fetchurl {
      url = "https://github.com/haierkeys/obsidian-fast-note-sync/releases/download/2.1.9/main.js";
      hash = "sha256:dae2844dc6047abddf4957eac472732e1f124d27d8094641741b958cc73be38c";
    };
    styles = pkgs.fetchurl {
      url = "https://github.com/haierkeys/obsidian-fast-note-sync/releases/download/2.1.9/styles.css";
      hash = "sha256:9d36c36890c64e5a702e2b6fca218f0b21a249a16311b79e4656b6f9cb3c3f88";
    };

    installPhase = ''
      mkdir -p $out
      cp $manifest $out/manifest.json
      cp $main $out/main.js
      cp $styles $out/styles.css
    '';
  };

  omnisearch = pkgs.stdenv.mkDerivation {
    pname = "omnisearch";
    version = "1.29.3";

    dontUnpack = true;

    manifest = pkgs.fetchurl {
      url = "https://github.com/scambier/obsidian-omnisearch/releases/download/1.29.3/manifest.json";
      hash = "sha256:f9b2791c44ea02e6347383cd02719309f59792eb39361f32ccaafc6f49753b7b";
    };
    main = pkgs.fetchurl {
      url = "https://github.com/scambier/obsidian-omnisearch/releases/download/1.29.3/main.js";
      hash = "sha256:d87ceddfe9fc429fe0b64f3d480be488c1e491f2889d24370061d3a2e5afcf4c";
    };
    styles = pkgs.fetchurl {
      url = "https://github.com/scambier/obsidian-omnisearch/releases/download/1.29.3/styles.css";
      hash = "sha256:818e6b361e426ab3a868a4524a20df5a6416bf614876b61ede340d0f78c9ebc8";
    };

    installPhase = ''
      mkdir -p $out
      cp $manifest $out/manifest.json
      cp $main $out/main.js
      cp $styles $out/styles.css
    '';
  };
}
