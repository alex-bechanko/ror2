let Schema = ./schema.dhall

let catalog
    : Schema.Catalog
    = [ ./items.dhall, ./artifacts.dhall ]

in  catalog
