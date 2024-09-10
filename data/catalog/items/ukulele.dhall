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
        { name = "Ukulele"
        , description = "...and his music was electric."
        , image = "items/ukulele.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          25% chance to fire chain lightning for 80% TOTAL damage.
          Chain lightning hits up to 3 (+2 per stack) targets within 20m (+2m per stack).
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Ukulele can trigger Tri-Tip Dagger, Chronobauble, Sticky Bomb, and AtG Missile Mk. 1."
        , "AtG Missile Mk. 1 can trigger Ukulele."
        , "57 Leaf Clover effectively doubles the chance of triggering Ukulele."
        ]
      }
    : Schema.GameItem
