{ config, pkgs, ... }:

{
  home.username = "netai";
  home.homeDirectory = "/home/netai";

  home.stateVersion = "24.11"; 

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    dotDir = ".config/zsh";
    initExtra = ''
      . ~/.nix-profile/etc/profile.d/nix.sh
      . ~/.config/zsh/.zsh.d/zsh-d-manager.sh
    '';
  };

  programs.starship = {
    enable = true;
    # Configuration written to ~/.config/starship.toml
    # settings = {
    #   add_newline = false;

    #   character = {
    #     success_symbol = "[➜](bold green)";
    #     error_symbol = "[➜](bold red)";
    #   };

    #   # package.disabled = true;
    # };
  };

  home.packages = [
    pkgs.git
    pkgs.fzf
  ];

  home.file = {
    ".config/nvim".source = ~/dotfiles/.config/nvim;
    ".config/python".source = ~/dotfiles/.config/python;
    ".config/zsh/.zsh.d".source = ~/dotfiles/.config/zsh/.zsh.d;
    ".config/starship.toml".source = ~/dotfiles/.config/starship.toml;
  };

  home.sessionVariables = {
    PYTHONSTARTUP = "~/.config/python/pythonstartup.py";
  };

  programs.home-manager.enable = true;
}
