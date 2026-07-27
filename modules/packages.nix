{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    gcc
    nil
    eza
    unzip
    opencode
    rust-analyzer
    rustup
    rustc
    cargo
    sbctl
    mariadb
  ];
}
