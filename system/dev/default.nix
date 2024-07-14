{ config, pkgs, ... }:

{
  imports = [
    ./nvim/default.nix
  ];

  home.packages = with pkgs;[
    vscodium
    zed-editor
    nodePackages.pnpm
    gcc
    gnumake
    nodejs
    go
    python3
    just
  ];

}
