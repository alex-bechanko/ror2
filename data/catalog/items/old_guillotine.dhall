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
        { name = "Old Guillotine"
        , description = "Instantly kill low health Elite monsters."
        , image = "items/old_guillotine.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          The instant kill threshold for Old Guillotine stacks hyperbolically, following the equation:
          ```
          f(x) = 1 - 1 / (1 + 0.13x)

          ```
          Where `x` is the number of stacks of Old Guillotine.

          With 8 Old Guillotines, the threshold becomes ~50%.    
          ''
      , unlocked_by = Some
          "Complete the **Cutdown** challenge. Defeat 500 Elite monsters."
      , interactions =
        [ "Enemies with shields still cannot trigger the Old Guillotine effect."
        , "Old Guillotine enables Acrid to kill Elite monsters with Poison by itself."
        ]
      }
    : Schema.GameItem
