let Schema = ./schema.dhall

let catalog
    : Schema.Catalog
    = {
    items = ./items.dhall,
    artifacts = ./artifacts.dhall
    }

in  catalog
