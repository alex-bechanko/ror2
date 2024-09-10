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
        { name = "Gesture of the Drowned"
        , description =
            "Dramatically reduce Equipment cooldown... BUT it automatically activates."
        , image = "items/gesture_of_the_drowned.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          ''
          Reduce Equipment cooldown by 50% (+15% per stack).
          Forces your Equipment to activate whenever it is off cooldown.
          ''
      , unlocked_by = Some
          ''
          Complete the **The Demons and the Crabs** challenge.
          Kill 20 Hermit Crabs by chasing them off the edge of the map.
          ''
      , interactions = [ "Fuel Cell and Gesture of the Drowned combine well." ]
      }
    : Schema.GameItem
