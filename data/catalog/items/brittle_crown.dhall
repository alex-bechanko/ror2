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
        { name = "Brittle Crown"
        , description = "Gain gold on hit... BUT surrender gold on getting hit."
        , image = "items/brittle_crown.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          ''
          30% chance on hit to gain 2 (+2 per stack) gold.
          Scales over time. 
          Lose gold on taking damage equal to 100% (+100% per stack) of the maximum
          health percentage you lost.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "The Crowdfunder gains enough gold with Brittle Crown to self-sustain its fire."
        ]
      }
    : Schema.GameItem
