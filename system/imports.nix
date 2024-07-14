{ config, pkgs, ... }:

{
  imports = [
    ./dev/default.nix
    ./sh.nix
    ./git.nix
    ./alacritty.nix
    ./wm/i3.nix
    ./gui/default.nix
  ];
}
