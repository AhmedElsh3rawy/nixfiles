{ config, pkgs, ... }:

{
  imports = [
    ./nvim/pkgs.nix
    ./git.nix
    ./alacritty.nix
  ];
}
