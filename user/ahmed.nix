{ config, pkgs, ... }:

{

  home.packages = with pkgs;[
    anki
    zathura
    obsidian
    thunderbird
    telegram-desktop
    discord
    brave
    postman
    obs-studio
  ];

}
