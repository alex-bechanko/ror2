let default = https://prelude.dhall-lang.org/Optional/default

let map = https://prelude.dhall-lang.org/List/map

let Schema = ./schema.dhall

let catalog = ./catalog.dhall

let itemToWebItem =
      \(g : Schema.GameItem) ->
          { name = g.item.name
          , description = g.advanced_description
          , image = g.item.image
          , background = default Text "" g.item.background
          }
        : Schema.WebItem

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
        : Schema.WebItem

let itemsCategory
    : Schema.WebCategory
    = { name = "Items"
      , items = map Schema.GameItem Schema.WebItem itemToWebItem catalog.items
      }

let artifactsCategory
    : Schema.WebCategory
    = { name = "Artifacts"
      , items =
          map Schema.Artifact Schema.WebItem artifactToWebItem catalog.artifacts
      }

in  [ itemsCategory, artifactsCategory ] : Schema.WebCatalog
