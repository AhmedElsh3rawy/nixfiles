{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    lazygit
  ];

  # programs.git = {
  #   enable = true;
  #   userName = "Ahmed";
  #   userEmail = "ahmedelsharawy117@gmail.com";
  #   aliases = {
  #     gst = "git status";
  #     gc = "git commit -m";
  #     gp = "git push";
  #   };
  # };
}
