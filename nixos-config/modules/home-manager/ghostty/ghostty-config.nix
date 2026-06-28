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

    font-family = "Iosevka NFM"
    font-family-bold = "Iosevka NFM Bold"
    font-family-italic = "Iosevka NFM Italic"
    font-family-bold-italic = "Iosevka NFM Bold Italic"
  '';
}
