let default = https://prelude.dhall-lang.org/Optional/default

let map = https://prelude.dhall-lang.org/List/map

let catalog = ../catalog/package.dhall
let Schema = catalog.Schema

let WebItem : Type = { name : Text, description : Text, image: Text, background: Text }

let WebCategory : Type = { name : Text,items : List WebItem }

let WebCatalog : Type = List WebCategory


let itemToWebItem =
      \(g : Schema.GameItem) ->
          { name = g.item.name
          , description = g.advanced_description
          , image = g.item.image
          , background = default Text "" g.item.background
          }
        : WebItem

let artifactToWebItem =
      \(a : Schema.Artifact) ->
          { name = a.item.name
          , description =
              ''
              ${a.item.description}
              ${a.code}
              ''
          , image = a.item.image
          , background = default Text "" a.item.background
          }
        : WebItem

let itemsCategory
    : WebCategory
    = { name = "Items"
      , items = map Schema.GameItem WebItem itemToWebItem catalog.items
      }

let artifactsCategory
    : WebCategory
    = { name = "Artifacts"
      , items =
          map Schema.Artifact WebItem artifactToWebItem catalog.artifacts
      }

in  [ itemsCategory, artifactsCategory ] : WebCatalog
