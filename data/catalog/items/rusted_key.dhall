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
        { name = "Rusted Key"
        , description =
            "Gain access to a Rusty Lockbox that contains a powerful item."
        , image = "items/rusted_key.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          ''
          A hidden cache containing an item (80%/20%) will appear in a random location on each stage.
          Opening the cache consumes this item.
          ''
      , unlocked_by = Some
          "Complete the **Keyed Up** challenge. Defeat a teleporter boss in under 15 seconds."
      , interactions =
        [ "Number of Rust Lockboxes on a level is determined by the number of players that have Rusted Keys."
        ]
      }
    : Schema.GameItem
