{ ... }: {
  imports = [
    ./packages.nix

    ./programs/fastfetch.nix
    ./programs/fish.nix
    ./programs/git.nix
    ./programs/neovim.nix
    ./programs/startship.nix
    ./programs/zoxide.nix
  ];

  home = {
    username = "avs";
    homeDirectory = "/home/avs";
    sessionVariables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
    };
    stateVersion = "26.05";
  };
}
