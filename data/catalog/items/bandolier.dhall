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

in  { item =
      { name = "Bandolier"
      , description =
          "Chance on kill to drop an ammo pack that resets all skill cooldowns."
      , image = "items/bandolier.png"
      , background = Some "backgrounds/rare.png"
      }
    , dlc = None Dlc
    , rarity = Rarity.Uncommon
    , advanced_description =
        "18% (+10% per stack) chance on kill to drop an ammo pack that resets all skill cooldowns."
    , unlocked_by = None Text
    , interactions =
      [ "Forgive Me Please triggers Bandolier"
      , "57 Leaf Clover effectively doubles the chance that Bandolier triggers."
      ]
    }
