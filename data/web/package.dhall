let default =
      https://prelude.dhall-lang.org/Optional/default
        sha256:5bd665b0d6605c374b3c4a7e2e2bd3b9c1e39323d41441149ed5e30d86e889ad

let map =
      https://prelude.dhall-lang.org/List/map
        sha256:dd845ffb4568d40327f2a817eb42d1c6138b929ca758d50bc33112ef3c885680

let catalog = ../catalog/package.dhall

let Schema = catalog.Schema

let WebItem
    : Type
    = { name : Text, description : Text, image : Text, background : Text }

let WebCategory
    : Type
    = { name : Text, items : List WebItem }

let WebCatalog
    : Type
    = List WebCategory

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
      , items = map Schema.Artifact WebItem artifactToWebItem catalog.artifacts
      }

in  [ itemsCategory, artifactsCategory ] : WebCatalog
