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
      { name = "Forgive Me Please"
      , description =
          "Throw a cursed doll that repeatedly triggers your 'On Kill' effects."
      , image = "items/forgive_me_please.png"
      , background = Some "backgrounds/equipment.png"
      }
    , dlc = None Dlc
    , rarity = Rarity.Equipment
    , advanced_description =
        "Throw a cursed doll out that triggers any On-Kill effects you have every 1 second for 8 seconds."
    , unlocked_by = Some
        "Complete the **I Love Dying!** challenge. Die 20 times."
    , interactions =
      [ ''
        Items that are triggered by Forgive Me Please:
        - Infusion
        - Ghor's Tome
        - Will-o'-the-Wisp
        - Hunter's Harpoon
        - Frost Relic
        - Gasoline
        - Monster Tooth Necklace
        - Bandolier
        - Ceremonial Dagger
        - Resonance Disk
        - Interstellar Desk Plant
        ''
      ]
    }
