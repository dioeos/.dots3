{ ... }:

{
  programs.ghostty = {
    enable = true;

    settings = {
      font-size = 14;
      window-decoration = "none";
      background-opacity = 0.7;
      custom-shader = "/home/dio/dots/shaders/cursor_smear.glsl";
      cursor-style = "block";
      cursor-style-blink = true;
      window-padding-x = "2,0";
      window-padding-y = "2,2";
      font-family = "Iosevka NFM";
      font-family-bold = "Iosevka NFM Bold";
      font-family-italic = "Iosevka NFM Italic";
      font-family-bold-italic = "Iosevka NFM Bold Italic";
      background-blur = true;
      theme = "Tomorrow Night Burns";
    };
  };
}
