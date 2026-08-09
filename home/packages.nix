{ pkgs, unstable, ... }: {
  home.packages =
    with pkgs;
    [
      tree
      vlc
      lazygit
      python3
      kdePackages.kclock
      kdePackages.kcalc
      helium
      gcc
      nil
      eza
      unzip
      rustup
    ]
    ++ (with unstable; [
      libreoffice
      discord
      spotify
    ]);
}
