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
        { name = "Ignition Tank"
        , description = "Your ignite effects deal quadruple damage."
        , image = "items/ignition_tank.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Uncommon
      , advanced_description =
          "Ignite effects deal +300% (+300% per stack) more damage over time."
      , unlocked_by = None Text
      , interactions =
        [ "Artificer's Flame bolt and Flamethrower are augmented by Ignition Tank."
        , "Gasoline is augmented by Ignition Tank."
        , "Molten Perforator is augmented by Ignition Tank."
        , "Helfire Tincture is augmented by Ignition Tank."
        ]
      }
    : Schema.GameItem
