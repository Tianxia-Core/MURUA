# ffp: FFP-MURUA-FLAKE declarative nix
{
  description = "Murua Universal Postal Tracer v8.7.0 — Tier-3 Bayesian UPU CN08 Logistics Telemetry & Chargeback Defense Organism";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    tianxia-core = {
      url = "github:Tianxia-Core/TianxiaOS";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, tianxia-core, ... }:
    let
      supportedSystems = [ "x86_64-linux" "aarch64-linux" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
    in {
      packages = forAllSystems (system:
        let
          pkgs = import nixpkgs { inherit system; };
        in {
          default = pkgs.rustPlatform.buildRustPackage {
            pname = "murua-tracer";
            version = "8.7.0";
            src = ./.;
            cargoLock.lockFile = ./Cargo.lock;
            nativeBuildInputs = [ pkgs.pkg-config ];
            buildInputs = [ pkgs.openssl ];
          };
        }
      );

      nixosModules = {
        default = import ./nix/murua-module.nix;
        murua = import ./nix/murua-module.nix;
      };

      devShells = forAllSystems (system:
        let
          pkgs = import nixpkgs { inherit system; };
        in {
          default = pkgs.mkShell {
            buildInputs = with pkgs; [ rustc cargo gcc zig go nim ocaml python3 sqlite ];
          };
        }
      );
    };
}
