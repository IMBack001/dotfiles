{ ... }: {
  imports = [
    ./boot.nix
    ./networking.nix
    ./locale.nix
    ./users.nix
    ./packages.nix
    ./fonts.nix
    ./plasma.nix
    ./programs.nix
    ./services.nix
    ./system.nix
  ];
}
