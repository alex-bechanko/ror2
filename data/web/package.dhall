-- Risk of Rain 2 item viewer
-- Copyright (C) 2024 Alex Bechanko
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Affero General Public License as
-- published by the Free Software Foundation, either version 3 of the
-- License, or (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Affero General Public License for more details.
--
-- You should have received a copy of the GNU Affero General Public License
-- along with this program.  If not, see <https://www.gnu.org/licenses/>.
-- Risk of Rain 2 item viewer
-- Copyright (C) 2024 Alex Bechanko
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Affero General Public License as
-- published by the Free Software Foundation, either version 3 of the
-- License, or (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Affero General Public License for more details.
--
-- You should have received a copy of the GNU Affero General Public License
-- along with this program.  If not, see <https://www.gnu.org/licenses/>.
let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let catalog =
      ../catalog/package.dhall
        sha256:da90da80d0c5a612ce5b95b6af7096cccd6cce01e3abf7052cf041765d78e536

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
          , background = Prelude.Optional.default Text "" g.item.background
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
          , background = Prelude.Optional.default Text "" a.item.background
          }
        : WebItem

let itemsCategory
    : WebCategory
    = { name = "Items"
      , items =
          Prelude.List.map Schema.GameItem WebItem itemToWebItem catalog.items
      }

let artifactsCategory
    : WebCategory
    = { name = "Artifacts"
      , items =
          Prelude.List.map
            Schema.Artifact
            WebItem
            artifactToWebItem
            catalog.artifacts
      }

in  [ itemsCategory, artifactsCategory ] : WebCatalog
