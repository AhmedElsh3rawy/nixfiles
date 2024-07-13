{ config, pkgs, ... }:

{
  imports = [
    ./sh.nix
    ./nvim/pkgs.nix
    ./git.nix
    ./alacritty.nix
  ];
}
