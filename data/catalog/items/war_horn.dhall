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
        { name = "War Horn"
        , description =
            "Activating your Equipment gives you a burst of attack speed."
        , image = "items/war_horn.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          "Activating your Equipment gives you +70% attack speed for 8s (+4s per stack)."
      , unlocked_by = Some
          "Complete the **Warmonger** challenge. Complete 3 Combat Shrines in a single stage."
      , interactions =
        [ "Spinel Tonic works well with War Horn, because it boosts the attack speed effect to 120%"
        ]
      }
    : Schema.GameItem
