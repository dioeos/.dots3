{ ... }:

{
  xdg.configFile."ghostty/config.ghostty".text = ''
    window-decoration = none
    background-opacity = 0.7
    font-size = 14
    custom-shader = /home/dio/dots/shaders/cursor_smear.glsl
    cursor-style = block
    cursor-style-blink = true
    window-padding-x = 2,0
    window-padding-y = 2,2
  '';
}
