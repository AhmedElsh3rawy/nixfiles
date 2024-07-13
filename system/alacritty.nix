{ config, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      env = {
        "TERM" = "xterm-256color";
      };

      window.opacity = 1;

      font = {
        normal = {
          family = "JetBrains Mono Nerd Font";
          style = "Regular";
        };
        size = 9;
      };
    };

  };
}
