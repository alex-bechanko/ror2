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
        { name = "Fuel Cell"
        , description =
            "Hold an additional equipment charge. Reduce equipment cooldown."
        , image = "items/fuel_cell.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          Hold an additional equipment charge (+1 per stack). 
          Equipment cooldown reduction stacks according to the equation: 
          ```
          f(c,x) = c * (1 - 0.15) ^ x
          ```
          Where `c` is the initial cooldown of the equipment, and `x` is the number of stacks of Fuel Cell.

          With 5 Fuel Cells, the chance to be hit with damage is ~50%.
          ''
      , unlocked_by = Some
          "Complete the **Experimenting** challenge. Pick up 5 different types of Equipment"
      , interactions =
        [ ''
          Gestures of the Drowned combine with Fuel Cells for cooldown reduction.
          Taking the cooldown reduction equattion, the cooldown becomes `0.5 * f(c, x + y)`.
          Where `x` is Fuel Cell stacks and `y` is Gestures of the Drowned stacks.
          ''
        ]
      }
    : Schema.GameItem
