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
        { name = "AtG Missile Mk. 1"
        , description = "Chance to fire a missile."
        , image = "items/atg_missile_mk_1.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          "10% chance to fire a missile that deals 300% (+300% per stack) TOTAL damage."
      , unlocked_by = None Text
      , interactions =
        [ "Kjaro's band and Runald's band will trigger with two stacks of AtG Missile Mk. 1"
        , "AtG Missile Mk.1 will 'Critically Strike' if the hit that triggered it was a 'Critical Strike'."
        , "Ukulele can trigger AtG Missile Mk. 1."
        , "57 Leaf Clover effectively doubles the chance of triggering AtG Missile Mk. 1."
        ]
      }
    : Schema.GameItem
