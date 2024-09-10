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
        { name = "Infusion"
        , description =
            "Killing an enemy permanently increases your maximum health, up to 100."
        , image = "items/infusion.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          Killing an enemy increases your health permanently by 1 (+1 per stack),
          up to a maximum of 100 (+100 per stack) health.
          ''
      , unlocked_by = Some
          "Complete the **Slaughter** challenge. Defeat 3000 enemies."
      , interactions = [ "Forgive Me Please triggers Infusion" ]
      }
    : Schema.GameItem
