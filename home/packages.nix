{ pkgs, ... }: {
  home.packages = with pkgs; [
    tree
    lazygit
    libreoffice
    vlc
    blender
    python3
    helium
    spotify
    kdePackages.kamoso
  ];

}
