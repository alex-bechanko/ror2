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
        { name = "Purity"
        , description =
            "Reduce your skill cooldowns by 2 seconds. You are unlucky."
        , image = "items/purity.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          ''
          All skill cooldowns are reduced by 2 (+1 per stack) seconds.
          All random effects are rolled +1 (+1 per stack) times for an unfavorable outcome.
          ''
      , unlocked_by = Some
          "Complete the **The Calm** challenge. Beat the game on Monsoon difficulty"
      , interactions =
        [ "57 Leaf Clover and Purity cancel each other out."
        , ''
          Items that can reach 100% chance to trigger will be unaffected by Purity.
          Those items are:
          - Lens-Maker's Glasses
          - Sticky Bomb
          - Tri-Tip Dagger
          - Ghor's Tome
          ''
        ]
      }
    : Schema.GameItem
