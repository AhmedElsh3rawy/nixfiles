{ config, pkgs, ... }:

{

  home.packages = with pkgs;[
    obsidian
    anki
    zathura

  ];

}
