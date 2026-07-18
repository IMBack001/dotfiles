{
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  services.fprintd.enable = true;

  hardware.bluetooth.enable = true;
}
