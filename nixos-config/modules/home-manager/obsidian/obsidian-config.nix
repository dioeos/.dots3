{ pkgs, ... }:

let
  plugins = import ./plugins.nix { inherit pkgs; };
in
{
  programs.obsidian = {
    enable = true;

    vaults = {
      vault-of-merle = {
        enable = true;
        target = "merle-vault";

        settings = {
          corePlugins = [
            "audio-recorder"
            "backlink"
            "bases"
            "bookmarks"
            "canvas"
            "command-palette"
            "daily-notes"
            "editor-status"
            "file-explorer"
            # "file-recovery"
            "footnotes"
            "global-search"
            "graph"
            "markdown-importer"
            # "note-composer"
            "outgoing-link"
            "outline"
            # "page-preview"
            "properties"
            # "publish"
            # "random-note"
            "slash-command"
            # "slides"
            "switcher"
            "sync"
            "tag-pane"
            "templates"
            "webviewer"
            "word-count"
            "workspaces"
            # "zk-prefixer"
          ];

          communityPlugins = [
            plugins.fast-note-sync
            plugins.omnisearch
          ];

        };
      };
    };
  };
}
