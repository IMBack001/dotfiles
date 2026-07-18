{
  programs = {
    firefox.enable = true;
    kdeconnect.enable = true;
    thunderbird.enable = true;
  };
  programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };
}
