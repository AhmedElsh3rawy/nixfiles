{ config, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    window.opacity = 0.7;
    scrolling.history = 1000;
    font = {
      normal = {
        family = "JetBrains Mono Nerd Font";
        style = "Regular";
      };

      size = 10;
    };
  };
}
