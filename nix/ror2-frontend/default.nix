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

