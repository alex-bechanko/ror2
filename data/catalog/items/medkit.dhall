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
        { name = "Medkit"
        , description = "Receive a delayed heal after taking damage."
        , image = "items/medkit.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          "2 seconds after getting hurt, heal for 20 plus an additional 5% (+5% per stack) of maximum health."
      , unlocked_by = Some
          "Complete the **Elite Slayer** challenge. Defeat an elite-type monster."
      , interactions =
        [ "Twenty stacks of Medkit is enough to fully recover your health."
        , "Rejuvenation Racks double the healing from Medkits."
        ]
      }
    : Schema.GameItem
