{ config, pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    baseIndex = 1;
    terminal = "xterm-256color";
    prefix = "C-Space";
    keyMode = "vi";
    mouse = true;
    plugins = with pkgs.tmuxPlugins; [
      yank
      tmux-fzf
      vim-tmux-navigator
    ];
    extraConfig = ''
      set-option -sa terminal-overrides ",xterm*:Tc"
      set -s escape-time 0

      # open in cwd
      bind '"' split-window -v -c "#{pane_current_path}"
      bind % split-window -h -c "#{pane_current_path}"

      # keybindings
      bind-key -T copy-mode-vi v send-keys -X begin-selection
      bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle
      bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel

      set -g status-bg '#7aa2f7' #'#E6B9A6'
      set -g status-fg black
    '';
  };
}
