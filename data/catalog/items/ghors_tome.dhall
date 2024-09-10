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
        { name = "Ghor's Tome"
        , description = "Chance on kill to drop a treasure."
        , image = "items/ghors_tome.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          "4% (+4% on stack) chance on kill to drop a treasure worth \$25. Scales over time."
      , unlocked_by = None Text
      , interactions =
        [ "Forgive Me Please triggers Ghor's Tome."
        , "For 100% chance to drop a treasure, 25 stacks of Ghor's Tome is needed."
        , "57 Leaf Clover effectively doubles the chance that Ghor's Tome triggers."
        , "Ghor's Tome is less significant if the Artifact of Sacrifice is activated."
        ]
      }
    : Schema.GameItem
