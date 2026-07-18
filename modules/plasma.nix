{ pkgs, ... }:

{
  services = {
    desktopManager.plasma6.enable = true;

    displayManager = {
      sddm = {
        enable = true;
        autoLogin.relogin = true;
      };
      autoLogin = {
        enable = true;
        user = "avs";
      };
    };
  };

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    discover
  ];
}
