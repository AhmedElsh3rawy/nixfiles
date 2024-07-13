{ config, pkgs, ... }:

{
  imports = [
    ./dunst.nix
    ./feh.nix
    ./picom.nix
    ./polybar.nix
    ./rofi.nix
  ];
}
