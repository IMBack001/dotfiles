{ pkgs, ... }: {
  boot = {
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;
    kernelPackages = pkgs.linuxPackages_latest;

    plymouth = {
      enable = true;
      theme = "bgrt";
    };

    consoleLogLevel = 3;
    initrd.verbose = false;

    kernelParams = [
      "quiet"
      "splash"
      "rd.udev.log_level=3"
      "rd.systemd.show_status=auto"
    ];
  };

  virtualisation.virtualbox.host.enable = true;
}
