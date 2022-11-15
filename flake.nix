{
  description = "A Risk of Rain 2 item searcher website";

  inputs.nixpkgs.url = "nixpkgs/nixos-21.11";
  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.y2j.url = "github:alex-bechanko/y2j";
  inputs.gojsonschema-cli.url = "github:alex-bechanko/gojsonschema-cli";
  inputs.static-file-server.url = "github:alex-bechanko/static-file-server";
  outputs =
    { self, nixpkgs, flake-utils, y2j, gojsonschema-cli, static-file-server }:
    flake-utils.lib.eachDefaultSystem (system: {
      devShells.default = nixpkgs.legacyPackages.${system}.mkShell {
        buildInputs = [
          y2j.packages.${system}.y2j
          gojsonschema-cli.packages.${system}.gojsonschema-cli
          static-file-server.packages.${system}.static-file-server
          nixpkgs.legacyPackages.${system}.elmPackages.elm
        ];
      };

      formatter = nixpkgs.legacyPackages.${system}.nixfmt;

    });

  nixConfig.bash-prompt-prefix = "\\e[1m\\e[35mnix\\e[0m ";
}

