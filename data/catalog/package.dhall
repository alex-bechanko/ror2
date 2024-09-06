let Schema = ./schema.dhall

let items = ./items/package.dhall

let artifacts = ./artifacts/package.dhall

in  { items, artifacts, Schema }
