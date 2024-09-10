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
        { name = "Blast Shower"
        , description = "Cleanse all negative effects."
        , image = "items/blast_shower.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Equipment
      , advanced_description =
          "Cleanse all negative effects. Includes debuffs, damage over time, and nearby projectiles."
      , unlocked_by = Some
          "Complete the **Warm For Life** challenge. Die three times while burning."
      , interactions =
        [ "Kjaro's Band, Runald's Band and Singularity Band cooldown can be reset with Blast Shower."
        ]
      }
    : Schema.GameItem
