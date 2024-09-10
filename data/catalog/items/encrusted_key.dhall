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
let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Encrusted Key"
        , description =
            "Gain access to an Encrusted Cache that contains a void item. Corrupts all Rusted Keys."
        , image = "items/encrusted_key.png"
        , background = Some "backgrounds/void.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Void
      , advanced_description =
          ''
          A hidden cache containing an item (60%/30%/10%) will appear in a random
          location on each stage.
          Opening the cache consumes this item.
          Corrupts all Rusted Keys.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "There is no reason to carry more Encrusted Keys than levels left to complete."
        ]
      }
    : Schema.GameItem
