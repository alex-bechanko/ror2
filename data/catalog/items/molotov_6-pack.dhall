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
        { name = "Molotov (6-pack)"
        , description =
            "Throw 6 flaming molotovs that ignite enemies upon shattering."
        , image = "items/molotov_6-pack.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Equipment
      , advanced_description =
          ''
          Throw 6 molotov cocktails that ignites enemies for 500% base damage.
          Each molotov leaves a burning area for 200% damage per second.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Ignition Tank augments the Ignite effect on Molotov (6-pack)" ]
      }
    : Schema.GameItem
