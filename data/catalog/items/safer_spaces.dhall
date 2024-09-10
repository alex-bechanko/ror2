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
        { name = "Safer Spaces"
        , description =
            "Block the next source of damage. Corrupts all Tougher Times."
        , image = "items/safer_spaces.png"
        , background = Some "backgrounds/void.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Void
      , advanced_description =
          ''
          Blocks incoming damage once.
          Recharges after 15 seconds (-10% per stack).
          Corrupts all Tougher Times.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Blast Shower resets Safer Spaces cooldown."
        , "Safer Spaces is a good way to mitigate fall damage."
        ]
      }
    : Schema.GameItem
