{ config, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      env = {
        "TERM" = "xterm-256color";
      };

      window = {
        opacity = 0.7;
        padding = { x = 5; y = 5; };
      };

      font = {
        normal = {
          # family = "JetBrains Mono Nerd Font";
          family = "FiraCode Nerd Font";
          style = "Regular";
        };
        size = 9;
      };

      colors = {
        primary = {
          background = "#000000";
          foreground = "#ffffff";
        };
      };

      # colors = {
      #   primary = {
      #     background = "#F7F7F7";
      #     foreground = "#434343";
      #   };
      #   cursor = {
      #     text = "#F7F7F7";
      #     cursor = "#434343";
      #   };
      #   normal = {
      #     black = "#000000";
      #     red = "#AA3731";
      #     green = "#448C27";
      #     yellow = "#CB9000";
      #     blue = "#325CC0";
      #     magenta = "#7A3E9D";
      #     cyan = "#0083B2";
      #     white = "#BBBBBB";
      #   };
      #   bright = {
      #     black = "#777777";
      #     red = "#F05050";
      #     green = "#60CB00";
      #     yellow = "#FFBC5D";
      #     blue = "#007ACC";
      #     magenta = "#E64CE6";
      #     cyan = "#00AACB";
      #     white = "#FFFFFF";
      #   };

      # tokyonight colors
      # colors = {
      #   primary = {
      #     background = "#1a1b26";
      #     foreground = "#a9b1d6";
      #   };
      #
      #   # Normal colors
      #   normal = {
      #     black = "#32344a";
      #     red = "#f7768e";
      #     green = "#9ece6a";
      #     yellow = "#e0af68";
      #     blue = "#7aa2f7";
      #     magenta = "#ad8ee6";
      #     cyan = "#449dab";
      #     white = "#787c99";
      #   };
      #
      #   # Bright colors
      #   bright = {
      #     black = "#444b6a";
      #     red = "#ff7a93";
      #     green = "#b9f27c";
      #     yellow = "#ff9e64";
      #     blue = "#7da6ff";
      #     magenta = "#bb9af7";
      #     cyan = "#0db9d7";
      #     white = "#acb0d0";
      #   };

      # rosepine colors
      # colors = {
      #   primary = {
      #     foreground = "#e0def4";
      #     background = "#191724";
      #     dim_foreground = "#908caa";
      #     bright_foreground = "#e0def4";
      #   };
      #
      #   cursor = {
      #     text = "#e0def4";
      #     cursor = "#524f67";
      #   };
      #
      #   vi_mode_cursor = {
      #     text = "#e0def4";
      #     cursor = "#524f67";
      #   };
      #
      #   search =
      #     {
      #       matches = {
      #         foreground = "#908caa";
      #         background = "#26233a";
      #       };
      #       focused_match = {
      #         foreground = "#191724";
      #         background = "#ebbcba";
      #       };
      #     };
      #
      #   hints = {
      #     start = {
      #       foreground = "#908caa";
      #       background = "#1f1d2e";
      #     };
      #     end = {
      #       foreground = "#6e6a86";
      #       background = "#1f1d2e";
      #     };
      #   };
      #
      #   line_indicator = {
      #     foreground = "None";
      #     background = "None";
      #   };
      #
      #   footer_bar = {
      #     foreground = "#e0def4";
      #     background = "#1f1d2e";
      #   };
      #   selection = {
      #     text = "#e0def4";
      #     background = "#403d52";
      #   };
      #
      #   normal = {
      #     black = "#26233a";
      #     red = "#eb6f92";
      #     green = "#31748f";
      #     yellow = "#f6c177";
      #     blue = "#9ccfd8";
      #     magenta = "#c4a7e7";
      #     cyan = "#ebbcba";
      #     white = "#e0def4";
      #   };
      #
      #   bright = {
      #     black = "#6e6a86";
      #     red = "#eb6f92";
      #     green = "#31748f";
      #     yellow = "#f6c177";
      #     blue = "#9ccfd8";
      #     magenta = "#c4a7e7";
      #     cyan = "#ebbcba";
      #     white = "#e0def4";
      #   };
      #
      #   dim = {
      #     black = "#6e6a86";
      #     red = "#eb6f92";
      #     green = "#31748f";
      #     yellow = "#f6c177";
      #     blue = "#9ccfd8";
      #     magenta = "#c4a7e7";
      #     cyan = "#ebbcba";
      #     white = "#e0def4";
      #   };
      # };

    };
  };
}
