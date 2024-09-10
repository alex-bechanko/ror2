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
        { name = "Ceremonial Dagger"
        , description = "Killing an enemy releases homing daggers."
        , image = "items/ceremonial_dagger.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          "Killing an enemy fires out 3 homing daggers that deal 150% (+150% per stack) base damage."
      , unlocked_by = None Text
      , interactions =
        [ "Forgive Me Please triggers Ceremonial Dagger."
        , "Crowbars are particularly nice for boosting damage from Ceremonial Dagger."
        ]
      }
    : Schema.GameItem
