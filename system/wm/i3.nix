{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs;[
    feh
    dunst
    picom
    rofi
    autotiling
    haskellPackages.greenclip
    brightnessctl
    scrot
    lxappearance
    alsa-utils
    pamixer
    xorg.xev
    libnotify
  ];

  # i3wm
  xsession.windowManager.i3 = {
    enable = true;
    config = rec {
      modifier = "Mod4";
      bars = [ ];

      gaps = {
        inner = 3;
        outer = -1;
      };

      window = {
        border = 0;
        hideEdgeBorders = "smart";

        # commands = [
        #   # Start brave in fullscreen by default.
        #   {
        #     command = "fullscreen enable";
        #     criteria = { class = "Brave"; };
        #   }
        #
        #   # Start thunar in fullscreen by default.
        #   {
        #     command = "fullscreen enable";
        #     criteria = { class = "Thunar"; };
        #   }
        #
        #   # Start vscodium in fullscreen by default.
        #   {
        #     command = "fullscreen enable";
        #     criteria = { class = "Codium"; };
        #   }
        #   {
        #     command = "fullscreen enable";
        #     criteria = { class = "zed"; };
        #   }
        #
        # ];
      };
      keybindings = lib.mkOptionDefault {
        "${modifier}+q" = "kill";
        "${modifier}+Return" = "workspace 1; exec --no-startup-id ${pkgs.alacritty}/bin/alacritty";
        "${modifier}+d" = "exec ${pkgs.rofi}/bin/rofi -modi drun -show drun -show-icons";
        "${modifier}+Shift+d" = "exec ${pkgs.rofi}/bin/rofi -show window -show-icons";
        "${modifier}+w" = "workspace 2; exec ${pkgs.brave}/bin/brave";
        "${modifier}+n" = "exec Thunar";
        # to move with vim keys
        "${modifier}+h" = "focus left";
        "${modifier}+j" = "focus down";
        "${modifier}+k" = "focus up";
        "${modifier}+l" = "focus right";
        # shutdown
        "${modifier}+Shift+q" = "exec poweroff";
      };

      startup = [
        {
          command = "exec i3-msg workspace 1";
          always = true;
          notification = false;
        }
        {
          command = "polybar &";
          always = true;
          notification = false;
        }
        {
          command = "feh --bg-fill /home/ahmed/Pictures/wallpaper/cyperbunk_girl.jpg";
          always = true;
          notification = false;
        }
      ];

    };



    extraConfig = ''
          
          default_border pixel 0
          default_floating_border pixel 0

          assign [class="alacritty"] 1
          assign [class="brave"] 2
          assign [class="Thunar"] 3
          assign [class="Thunderbird"] 4
          assign [class="TelegramDesktop"] 5

          for_window [class=alacritty] focus
          for_window [class=brave] focus
          for_window [class=Thunar] focus
          for_window [class=Thunderbird] focus
          for_window [class=TelegramDesktop] focus
        '';
  };

}
