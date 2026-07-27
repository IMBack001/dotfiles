{ pkgs, ... }: {
  home.packages = with pkgs; [
    tree
    vlc
    lazygit
    libreoffice
    python3
    helium
    spotify
    kdePackages.kclock
    kdePackages.kcalc
    floorp-bin
  ];

}
