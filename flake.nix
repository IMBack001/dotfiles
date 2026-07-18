{
  description = "NixOS Configuration";

  inputs = {

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    alejandra = {
      url = "github:kamadorueda/alejandra/3.1.0";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    lazyvim.url = "github:pfassina/lazyvim-nix";

    helium = {
      url = "github:oxcl/nix-flake-helium-browser";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      alejandra,
      home-manager,
      lazyvim,
      helium,
      ...
    }:

    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        overlays = [
          helium.overlays.default
        ];
        config.allowUnfree = true;
      };
    in
    {
      formatter.${system} = alejandra.packages.${system}.default;
      nixosConfigurations.NixOS = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit self;
        };
        modules = [
          {
            nixpkgs.config.allowUnfree = true;
            nixpkgs.overlays = [
              helium.overlays.default
            ];
          }
          ./configuration.nix

          home-manager.nixosModules.home-manager
          {
            home-manager = {
              backupFileExtension = "backup";
              useGlobalPkgs = true;
              useUserPackages = true;
              sharedModules = [ lazyvim.homeManagerModules.default ];
              users.avs = import ./home.nix;
            };
          }
        ];
      };
    };
}
