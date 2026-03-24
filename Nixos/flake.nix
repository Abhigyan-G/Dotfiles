{
  description = "My System Flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim/nixos-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
      inputs.noctalia-qs.follows = "noctalia-qs";
    };

    noctalia-qs = {
      url = "github:noctalia-dev/noctalia-qs";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };

  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-unstable,
      home-manager,
      nixvim,
      ...
    }@inputs:
    let
      lib = nixpkgs.lib;

      system = "x86_64-linux";

      username = "abhigyang";
      name = "Abhigyan Gautam";

      pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};

    in
    {

      nixosConfigurations = {
        nixos = lib.nixosSystem {
          inherit system;
          specialArgs = {
            inherit inputs username pkgs-unstable;
          };
          modules = [
            ./hosts/main/configuration.nix

            home-manager.nixosModules.default
            {
              home-manager = {
                # useGlobalPkgs = true;  #gives warning
                useUserPackages = true;
                extraSpecialArgs = {
                  inherit username inputs pkgs-unstable;
                };

                # This applies your home config automatically
                users.${username} = ./home-manager/home.nix;
              };
            }

          ];
        };

      };

      # homeConfigurations.${username} = home-manager.lib.homeManagerConfiguration {
      #   inherit pkgs;
      #   extraSpecialArgs = {
      #     inherit pkgs-unstable username name;
      #   };
      #   modules = [ ./home-manager/home.nix ];

      # };

    };
}
