{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs { inherit system; };
    in rec {
      packages.default = pkgs.stdenv.mkDerivation {
        name = "hashclash";
        src = self;
        nativeBuildInputs = with pkgs; [ cmake ninja ];
        buildInputs = with pkgs; [
          boost
          bzip2
          zlib
        ];
      };

      devShell.default = pkgs.mkShell {
        inputsFrom = [ packages.default ];
      };
    }
  );
}
