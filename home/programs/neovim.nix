{ pkgs, ... }: {
  programs = {
    neovim = {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
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
        tree-sitter
        nil
        lua-language-server
        nixd
        alejandra
        pyright
        ripgrep
        fd
        statix
      ];

    };
  };
}
