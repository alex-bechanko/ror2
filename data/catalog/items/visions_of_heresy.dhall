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
        { name = "Visions of Heresy"
        , description = "Replace your Primary Skill with 'Hungering Gaze'."
        , image = "items/visions_of_heresy.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          "Replace your Primary Skill with Hungering Gaze. Fire a flurry of tracking shards that detonate after a delay, dealing 120% base damage. Hold up to 12 charges (+12 per stack) that reload after 2 seconds (+2 per stack)."
      , unlocked_by = Some
          "Complete the **Blockade Breaker** challenge. Kill 15 monsters in a single run."
      , interactions =
        [ ''
          Obtaining Essence of Heresy, Hooks of Heresy, Strides of Heresy,
          and Visions of Heresy transforms your survivor into the Heretic.
          ''
        ]
      }
    : Schema.GameItem
