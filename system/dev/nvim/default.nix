{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    lua-language-server
    stylua
    gopls
    rust-analyzer
    nodePackages.typescript-language-server
    nodePackages.bash-language-server
    nodePackages.pyright
    nil
    nixpkgs-fmt
    clang-tools
    gotools
    ruff
    black
    mypy
    nodePackages.prettier
    golines
    nodePackages.eslint
    tailwindcss-language-server
  ];

  # home.file.".config/nvim" = {
  #   source = ./nvim;
  #   recursive = true;
  # };

}
