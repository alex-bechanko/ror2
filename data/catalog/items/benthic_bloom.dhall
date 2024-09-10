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
        { name = "Benthic Bloom"
        , description =
            "Upgrades your items at the start of each stage. Corrupts all 57 Leaf Clovers."
        , image = "items/benthic_bloom.png"
        , background = Some "backgrounds/void.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Void
      , advanced_description =
          ''
          Upgrades 3 (+3 per stack) random items to items of the next higher Rarity
          at the start of each stage.
          Corrupts all 57 Leaf Clovers.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Legendary, Boss, Lunar and Void items cannot be transformed"
        , "Items can transform into 57 Leaf Clover, thus causing Benthic Bloom to increase."
        ]
      }
    : Schema.GameItem
