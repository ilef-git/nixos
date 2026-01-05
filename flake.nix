let
  username = "ilef";
in {
  description = "Моя система";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
  }: {
    nixosConfigurations = {
      desktop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hardware-configuration.nix

          ./default/default.nix
          ./desktop/desktop.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.${username} = {pkgs, ...}: {
              imports = [
                ./default/home/home.nix
                ./desktop/home/home.nix
              ];
            };
          }
        ];
      };

      laptop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {inherit username;};
        modules = [
          ./hardware-configuration.nix

          ./default/default.nix
          ./laptop/laptop.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.${username} = {pkgs, ...}: {
              imports = [
                ./default/home/home.nix
                ./laptop/home/home.nix
              ];
            };
          }
        ];
      };
    };
  };
}
