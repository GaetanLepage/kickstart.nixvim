{
  description = "Kickstart your nixvim configuration";

  inputs = {
    # You can follow other channels:
    # - nixpkgs-unstable for even fresher packages
    # - nixos-23.11 for a more stable experience
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    flake-parts,
    nixvim,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem = {
        config,
        pkgs,
        system,
        ...
      }: let
        nixvim' = nixvim.legacyPackages.${system};
        nvim = nixvim'.makeNixvimWithModule {
          inherit pkgs;
          # The path to your nixvim configuration
          module = import ./config;
        };
      in {
        # Run `nix flake check .` to verify that your config is not broken
        checks.default = nixvim.lib.${system}.check.mkTestDerivationFromNvim {
          inherit nvim;
          name = "A nixvim configuration";
        };

        # Lets you run `nix run .` to start nixvim
        packages.default = nvim;

        # Run `nix fmt` to format the entire code base
        formatter = pkgs.alejandra;
      };
    };
}
