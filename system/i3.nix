{ config, pkgs, ... }:

{
  home.packages = with pkgs;[
    polybar
    feh
    dunst
    picom
    rofi
  ];

  # i3wm
  xsession.windowManager.i3 = {
    enable = true;
    config = {
      modifier = "Mod4";
      gaps = {
        inner = 0;
        outer = -1;
      };
    };
  };

}
