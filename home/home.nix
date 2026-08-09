{ ... }: {
  imports = [
    ./packages.nix

    ./programs/default.nix
    ./configs/default.nix
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
