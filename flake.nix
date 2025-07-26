{
  description = "Base16 color schemes";

  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
    };
  in {
    overlays.default = final: prev: {
      schemes-nix = import ./nix {
        stdenv = prev.stdenv;
      };
    };

    packages.${system}.default = import ./nix {
      stdenv =  pkgs.stdenv;
    };

    formatter.${system} = pkgs.alejandra;
  };
}
