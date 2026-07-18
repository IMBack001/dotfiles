{ pkgs, ... }:

{
  home.stateVersion = "26.05";
  programs.home-manager.enable = true;

  home = {
    username = "avs";
    homeDirectory = "/home/avs";
    sessionVariables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
    };
    packages = with pkgs; [
      tree
      libreoffice
      vlc
      blender
      python3
      helium
      spotify
      kdePackages.kamoso
    ];
  };

  programs = {
    neovim = {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
      extraPackages = with pkgs; [
        tree-sitter
        nil
        lua-language-server
      ];
    };

    lazyvim = {
      enable = true;
      extras = {
        lang.nix.enable = true;
        lang.python = {
          enable = true;
          installDependencies = true;
          installRuntimeDependencies = true;
        };
        editor.neo-tree.enable = true;
      };
      extraPackages = with pkgs; [
        nixd
        alejandra
        pyright
        ripgrep
        fd
        statix
      ];

    };

    fish = {
      enable = true;
      shellAliases = {
        btw = "echo I use NixOS btw";
        cd = "z";
        ls = "eza -l --group-directories-first --icons=always";
        lsa = "eza -la --group-directories-first --icons=always";
      };
      interactiveShellInit = ''
        set -g fish_greeting
        fastfetch
      '';
    };

    starship = {
      enable = true;
      enableFishIntegration = true;
      presets = [
        "jetpack"
      ];
    };

    zoxide = {
      enable = true;
      enableFishIntegration = true;
    };

    git = {
      enable = true;
      settings = {
        user.name = "Abish";
        user.email = "cinnamonstew5@gmail.com";
      };
    };

    fastfetch = {
      enable = true;
      settings = {
        # logo = {
        #   source = "nixos_small";
        # };
        display = {
          separator = " ~> ";
        };
        modules = [
          "title"
          "separator"
          "os"
          "kernel"
          "packages"
          "shell"
          "terminal"
          "cpu"
          "gpu"
          "memory"
          "disk"
          "uptime"
          "break"
          "colors"
        ];
      };
    };

  };

}
