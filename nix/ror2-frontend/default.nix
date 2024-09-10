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


{ pkgs, flake-pkgs }:
pkgs.stdenv.mkDerivation {
  name = "ror2-frontend";
  src = pkgs.lib.cleanSource ../../web;
  buildInputs = [
    pkgs.dhall-json
    pkgs.elmPackages.elm
    pkgs.rsync
    pkgs.nodePackages_latest.tailwindcss
    flake-pkgs.json-to-javascript
    flake-pkgs.ror2-web-data
  ];

  configurePhase = pkgs.elmPackages.fetchElmDeps {
    elmPackages = import ./elm-srcs.nix;
    elmVersion = "0.19.1";
    registryDat = ./registry.dat;
  };

  installPhase = ''
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
}

