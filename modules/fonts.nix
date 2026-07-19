{ pkgs, ... }:
{
  fonts = {
    enableDefaultPackages = true;

    packages = with pkgs; [
      inter
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      nerd-fonts.caskaydia-cove
    ];

    fontconfig.defaultFonts = {
      serif = [ "Noto Serif" ];
      sansSerif = [ "Inter" ];
      monospace = [ "CaskaydiaMono Nerd Font" ];
      emoji = [ "Noto Color Emoji" ];
    };
  };

  console = {
    font = "ter-124b";
    packages = with pkgs; [
      terminus_font
    ];
  };
}
