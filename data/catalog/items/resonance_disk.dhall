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
        { name = "Resonance Disk"
        , description =
            ''
            Obtain a Resonance Disc charged by killing enemies.
            Fires automatically when fully charged.
            ''
        , image = "items/resonance_disk.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          ''
          Killing 4 enemies in 7 seconds charges the Resonance Disc.
          The disc launches itself toward a target for 300% base damage (+300% per stack),
          piercing all enemies it doesn't kill,
          and then explodes for 1000% base damage (+1000% per stack).
          Returns to the user, striking all enemies along the way for 300% base damage (+300% per stack).
          ''
      , unlocked_by = None Text
      , interactions = [ "Forgive Me Please charges Resonance Disk" ]
      }
    : Schema.GameItem
