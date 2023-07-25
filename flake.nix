{
  description = "A Risk of Rain 2 item searcher website";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.y2j.url = "github:alex-bechanko/y2j";
  inputs.gojsonschema-cli.url = "github:alex-bechanko/gojsonschema-cli";
  inputs.static-file-server.url = "github:alex-bechanko/static-file-server";
  outputs =
    { self, nixpkgs, flake-utils, y2j, gojsonschema-cli, static-file-server }:
    let pkgs = nixpkgs.legacyPackages;
    in flake-utils.lib.eachDefaultSystem (system: {
      devShells.default = pkgs.${system}.mkShell {
        buildInputs = [
          y2j.packages.${system}.y2j
          gojsonschema-cli.packages.${system}.gojsonschema-cli
          static-file-server.packages.${system}.static-file-server
          pkgs.${system}.elmPackages.elm
          pkgs.${system}.elmPackages.elm-format
          pkgs.${system}.nodePackages_latest.tailwindcss
          pkgs.${system}.dhall
          pkgs.${system}.dhall-json
          pkgs.${system}.dhall-lsp-server
        ];
      };

      formatter = pkgs.${system}.nixfmt;

    });
}

