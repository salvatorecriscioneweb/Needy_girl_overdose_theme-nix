{
  description = "Needy_girl_overdose_theme in Nix";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        packages = rec {
          needy_overdose-gtk-theme = pkgs.callPackage ./nix/package.nix {};
          default = needy_overdose-gtk-theme;
        };
      }
    );
}
