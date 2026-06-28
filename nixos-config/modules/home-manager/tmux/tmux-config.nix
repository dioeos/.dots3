{ ... }:

{
  imports = [
  ];

  programs.tmux = {
    enable = true;
    clock24 = true;
    keyMode = "vi";
    mouse = true;
    prefix = "C-s";
    terminal = "tmux-256color";
    extraConfig = ''
      bind h select-pane -L
      bind j select-pane -D
      bind k select-pane -U
      bind l select-pane -R

      set -g base-index 1
      set -g pane-base-index 1

      set -as terminal-features ",xterm-ghostty:RGB,italics"
      set -as terminal-features ",ghostty:RGB,italics"
    '';
  };
}
