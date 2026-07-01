{ pkgs, ... }:

let
  plugins = import ./plugins.nix { inherit pkgs; };
  vault = "merle-vault";
  configDir = "${vault}/.obsidian";
in
{
  home.file."${vault}/Housekeeping/Templates" = {
    source = ./templates;
    recursive = true;
  };

  home.file."${configDir}/app.json".text = builtins.toJSON {
    vimMode = true;
    newFileLocation = "folder";
    newFileFolderPath = "Raw";
    attachmentFolderPath = "Housekeeping/Attachments";
    showUnsupportedFiles = true;
    alwaysUpdateLinks = true;
  };


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
