{
  pkgs,
  unstable,
  inputs,
  ...
}:
{
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
      clang-tools
      nil
      eza
      unzip
      rustup
      inputs.zen-browser.packages.${pkgs.system}.zen-browser
    ]
    ++ (with unstable; [
      libreoffice
      discord
      spotify
      zed-editor
    ]);
}
