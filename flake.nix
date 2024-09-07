{
  description = "A Risk of Rain 2 item searcher website";

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
      let pkgs = nixpkgs.legacyPackages.${system};
      flake-pkgs = self.packages.${system};
      in {
        packages.json-to-javascript = pkgs.writeShellApplication {
          name = "json-to-javascript";
          text = builtins.readFile ./tools/json-to-javascript.sh;
        };

        packages.ror2-data = pkgs.dhallPackages.buildDhallDirectoryPackage {
          name = "ror2-data";
          src = ./data/catalog;
          dependencies = [pkgs.dhallPackages.Prelude];
          source = true;
        };

        packages.ror2-web-data = pkgs.dhallPackages.buildDhallDirectoryPackage {
          name = "ror2-web-data";
          src = ./data/web;
          file = "package.dhall";
          dependencies = [pkgs.dhallPackages.Prelude flake-pkgs.ror2-data ];
          source = true;
        };

        packages.ror2-frontend = pkgs.stdenv.mkDerivation {
          name = "ror2-frontend";
          src = pkgs.lib.cleanSource ./web;
          buildInputs = [
            pkgs.dhall-json
            pkgs.elmPackages.elm
            pkgs.rsync
            pkgs.nodePackages_latest.tailwindcss
            flake-pkgs.json-to-javascript
            flake-pkgs.ror2-web-data
          ];

          configurePhase = pkgs.elmPackages.fetchElmDeps {
            elmPackages = import ./nix/elm-srcs.nix;
            elmVersion = "0.19.1";
            registryDat = ./nix/registry.dat;
          };

          installPhase =
          ''
          mkdir -p $out
          mkdir -p $out/js

          cp config.js $out/js/
          elm make src/Main.elm --output $out/js/main.js

          ${pkgs.dhall-json}/bin/dhall-to-json \
            --file ${flake-pkgs.ror2-web-data}/source.dhall \
            --output $out/js/catalog.js \
            --pretty \
            --preserve-null

          ${flake-pkgs.json-to-javascript}/bin/json-to-javascript catalog $out/js/catalog.js

          cp index.html $out/

          mkdir -p $out/css
          ${pkgs.nodePackages_latest.tailwindcss}/bin/tailwindcss \
            -i input.css \
            -o $out/css/style.css \
            -c tailwind.config.js

            rsync -ah images/ $out/images/
          '';
        };

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
          ];
        };

        formatter = pkgs.nixfmt;

      });
}

