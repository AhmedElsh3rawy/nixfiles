{ config, pkgs, ... }:

{

  home.packages = with pkgs;[
    anki
    zathura

  ];

}
