{config, pkgs, ...}:
let
  myAliases = {
    nf = "neofetch";
    nv = "nvim";
    ll = "ls -la";
    ".." = "cd ..";
    "..." = "cd ../..";
    nix-rebuild = "sudo nixos-rebuild switch --flake .";
    home-rebuild = "home-manager switch --flake .";
  };
in
{
  programs.bash = {
    enable = true;
    shellAliases = myAliases;
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = myAliases;
  };
  
  programs.oh-my-posh = {
    enable = true;
    useTheme = "pure";
  }; 
}
