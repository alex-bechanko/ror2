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
let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Tougher Times"
        , description = "Chance to block incoming damage."
        , image = "items/tougher_times.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          ''
            Chance to block incoming damage stacks hyperbolically, following the equation:
            ```
            f(x) = 1 - 1 / (1 + 0.15 * x)
            ```
            Where `x` is the number of items.

            With 10 Tougher Times, the chance to be hit with damage is ~60%.
            Tougher Times is unaffected by luck.
          ''
      , unlocked_by = Some
          "Complete the **Learning Process** challenge. Die 5 times."
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
