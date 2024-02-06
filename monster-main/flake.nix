{
  inputs = {
    forester = {
      url = "sourcehut:~jonsterling/ocaml-forester";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs =
    { self
    , flake-utils
    , nixpkgs
    , forester
    }:
    flake-utils.lib.eachDefaultSystem
      (system:
      let
        pkgs = import nixpkgs { inherit system; };
        legacyPackages = import forester.legacyPackages.${system};
      in
      {
        devShell =
          pkgs.mkShell {
            buildInputs = with pkgs; [
              forester.packages.${system}.default
              texlive.combined.scheme-full
              fswatch
            ];
          };
      });
}
