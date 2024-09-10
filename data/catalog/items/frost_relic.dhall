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
        { name = "Frost Relic"
        , description = "Killing enemies surrounds you with an ice storm."
        , image = "items/frost_relic.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          ''
          Killing an enemy surrounds you with an ice storm.
          The storm deals 1200% damage per second and slows enemies by 80% for 1.5s.
          The storm grows with every kill, increasing its radius by 2m.
          Stacks up to 18m (+12m per stack).
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Forgive Me Please triggers Frost Relic."
        , "Focus Crystals are a good way to increase Frost Relic damage."
        ]
      }
    : Schema.GameItem
