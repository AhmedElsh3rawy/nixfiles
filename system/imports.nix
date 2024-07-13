{ config, pkgs, ... }:

{
  imports = [
    ./sh.nix
    ./nvim/pkgs.nix
    ./git.nix
    ./alacritty.nix
    ./i3.nix
    ./gui/default.nix
  ];
}
