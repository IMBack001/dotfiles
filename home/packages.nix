{ pkgs, ... }: {
  home.packages = with pkgs; [
    tree
    libreoffice
    vlc
    blender
    python3
    helium
    spotify
    kdePackages.kamoso
  ];

}
