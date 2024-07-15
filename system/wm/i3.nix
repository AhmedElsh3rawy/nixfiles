{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs;[
    polybar
    feh
    dunst
    picom
    rofi
    autotiling
    haskellPackages.greenclip
    brightnessctl
    scrot
  ];

  # i3wm
  xsession.windowManager.i3 = {
    enable = true;
    configFile = ./config;
    #   config = rec {
    #     modifier = "Mod4";
    #     window.border = 0;
    #     # bars = [ ];
    #
    #     gaps = {
    #       inner = 4;
    #       outer = 0;
    #     };
    #
    #     keybindings = lib.mkOptionDefault {
    #       # "XF86AudioMute" = "exec amixer set Master toggle";
    #       # "XF86AudioLowerVolume" = "exec amixer set Master 4%-";
    #       # "XF86AudioRaiseVolume" = "exec amixer set Master 4%+";
    #       "XF86MonBrightnessDown" = "exec brightnessctl set 5%-";
    #       "XF86MonBrightnessUp" = "exec brightnessctl set 5%+";
    #       "${modifier}+q" = "kill";
    #       "${modifier}+Return" = "exec ${pkgs.alacritty}/bin/alacritty";
    #       "${modifier}+d" = "exec ${pkgs.rofi}/bin/rofi -modi drun -show drun";
    #       "${modifier}+Shift+d" = "exec ${pkgs.rofi}/bin/rofi -show window";
    #       "${modifier}+w" = "exec ${pkgs.firefox}/bin/firefox";
    #       "${modifier}+n" = "exec Thunar";
    #       # "${modifier}+Shift+x" = "exec systemctl suspend";
    #     };
    #
    #     startup = [
    #       {
    #         command = "exec i3-msg workspace 1";
    #         always = true;
    #         notification = false;
    #       }
    #       # {
    #       #   command = "systemctl --user restart polybar.service";
    #       #   always = true;
    #       #   notification = false;
    #       # }
    #       {
    #         command = "feh --bg-fill /home/ahmed/Downloads/background.jpg";
    #         always = true;
    #         notification = false;
    #       }
    #     ];
    #
    #   };
    #
    #   extraConfig = ''
    #     
    #     default_border pixel 0
    #     default_floating_border pixel 0
    #
    #     assign [class="alacritty"] 1
    #     assign [class="(?i)firefox"] 2
    #     assign [class="Thunar"] 3
    #     assign [class="thunderbird"] 4
    #     assign [class="TelegramDesktop"] 5
    #
    #     for_window [class=alacritty] focus
    #     for_window [class=(?i)firefox] focus
    #     for_window [class=Thunar] focus
    #     for_window [class=Thunderbird] focus
    #     for_window [class=TelegramDesktop] focus
    #   '';
    # };

  };
}
