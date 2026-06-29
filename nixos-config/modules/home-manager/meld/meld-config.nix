{ pkgs, ... }:

{
  home.packages = with pkgs; [
    meld
  ];

  programs.git = {
    enable = true;

    extraConfig = {
      merge.tool = "meld";
      mergetool.meld.cmd = "meld \"$LOCAL\" \"$BASE\" \"$REMOTE\" --output=\"$MERGED\"";
      mergetool.meld.trustExitCode = false;

      diff.tool = "meld";
      difftool.meld.cmd = "meld \"$LOCAL\" \"$REMOTE\"";
    };
  };
}
