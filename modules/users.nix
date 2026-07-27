{ pkgs, ... }:

{
  users.users.avs = {
    isNormalUser = true;

    shell = pkgs.fish;

    extraGroups = [
      "wheel"
      "NetworkManager"
      "vboxusers"
    ];
  };
  programs.fish.enable = true;
}
