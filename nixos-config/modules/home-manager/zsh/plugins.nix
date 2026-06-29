{ pkgs, ... }:

{
  home.packages = with pkgs; [
    pure-prompt
  ];

  programs.zsh.initContent = ''
    if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
      tmux attach-session -t default || tmux new-session -s default
    fi

    fpath+=(${pkgs.pure-prompt}/share/zsh/site-functions)

    autoload -U promptinit
    promptinit
    prompt pure
    PURE_PROMPT_SYMBOL="λ"
  '';
}
