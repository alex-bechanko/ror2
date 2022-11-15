{
  description = "A Risk of Rain 2 item searcher website";

  inputs.nixpkgs.url = "nixpkgs/nixos-21.11";
  inputs.y2j.url = "github:alex-bechanko/y2j";
  inputs.gojsonschema-cli.url = "github:alex-bechanko/gojsonschema-cli";
  inputs.static-file-server.url = "github:alex-bechanko/static-file-server";
  outputs = { self, nixpkgs, y2j, gojsonschema-cli, static-file-server }:
    let
      supportedSystems =
        [ "x86_64-linux" "x86_64-darwin" "aarch64-linux" "aarch64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
    in {
      devShells = forAllSystems (system: {
        default = nixpkgs.legacyPackages.${system}.mkShell {
          buildInputs = [
            y2j.packages.${system}.y2j
            gojsonschema-cli.packages.${system}.gojsonschema-cli
            static-file-server.packages.${system}.static-file-server
            nixpkgs.legacyPackages.${system}.elmPackages.elm
          ];
        };

      });

      formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixfmt;
    };
}

