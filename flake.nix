{
  description = "Development environment with PNPM";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            nodejs_22 
            nodePackages.pnpm
          ];

          shellHook = ''
            echo "PNPM development environment loaded"
            echo "Node.js version: $(node --version)"
            echo "PNPM version: $(pnpm --version)"
          '';
        };
      });
}