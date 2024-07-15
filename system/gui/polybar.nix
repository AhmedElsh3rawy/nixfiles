{ config, pkgs, ... }:

{
  services.polybar = {
    enable = true;
    config = ./config.ini;
    package = pkgs.polybar.override {
      i3Support = true;
    };
    script = "polybar maniBar &";
  };

}
