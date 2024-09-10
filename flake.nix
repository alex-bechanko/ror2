# Risk of Rain 2 item viewer
# Copyright (C) 2024 Alex Bechanko
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.


{
  description = "Risk of Rain 2 item viewer";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    y2j.url = "github:alex-bechanko/y2j";
    gojsonschema-cli.url = "github:alex-bechanko/gojsonschema-cli";
    static-file-server.url = "github:alex-bechanko/static-file-server";
  };

  outputs =
    { self, nixpkgs, flake-utils, y2j, gojsonschema-cli, static-file-server }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        flake-pkgs = self.packages.${system};
      in {
        packages.json-to-javascript = pkgs.writeShellApplication {
          name = "json-to-javascript";
          text = builtins.readFile ./tools/json-to-javascript.sh;
        };

        packages.ror2-catalog = pkgs.dhallPackages.buildDhallDirectoryPackage {
          name = "ror2-catalog";
          src = ./data/catalog;
          dependencies = [ pkgs.dhallPackages.Prelude ];
          source = true;
        };

        packages.ror2-web-data = pkgs.dhallPackages.buildDhallDirectoryPackage {
          name = "ror2-web-data";
          src = ./data/web;
          file = "package.dhall";
          dependencies = [ pkgs.dhallPackages.Prelude flake-pkgs.ror2-catalog ];
          source = true;
        };

        packages.ror2-frontend = import ./nix/ror2-frontend/default.nix {inherit pkgs flake-pkgs;};

        devShells.default = pkgs.mkShell {
          buildInputs = [
            flake-pkgs.json-to-javascript
            y2j.packages.${system}.y2j
            gojsonschema-cli.packages.${system}.gojsonschema-cli
            static-file-server.packages.${system}.static-file-server
            pkgs.bashInteractive
            pkgs.elmPackages.elm
            pkgs.elmPackages.elm-format
            pkgs.elmPackages.elm-live
            pkgs.nodePackages_latest.tailwindcss
            pkgs.dhall
            pkgs.dhall-json
            pkgs.dhall-lsp-server
            pkgs.rsync
            pkgs.rename
            pkgs.elm2nix
            pkgs.dhall-nixpkgs
          ];
        };

        formatter = pkgs.nixfmt;

      });
}

