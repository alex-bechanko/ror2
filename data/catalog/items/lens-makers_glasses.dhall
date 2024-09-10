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
        { name = "Lens-Maker's Glasses"
        , description =
            "Gain 10% chance for hits to 'Critically Strike', dealing double damage."
        , image = "items/lens-makers_glasses.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          ''
          Your attacks have a 10% (+10% per stack) chance to 'Critically Strike', dealing double damage.
          Lens-Maker's Glasses is affected by luck.
          You need 10 Lens-Maker's Glasses to achieve 100% chance to 'Critically Strike'.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Shatterspleen bleed effect chance is the same as critical hit chance"
        , ''
          Predatory Instints and Harvester's Scythe increase the chance to `Critically Strike' just like Len's Maker's
          Glasses.
          Combined you need nine stacks of Lens-Maker's Glasses, one stack of Predatory Instincts, and one stack of
          Harvester's Scythe to achieve 100% chance to `Critically Strike`.
          ''
        , "57 Leaf Clover effectively doubles the chance of triggering a `Critical Strike'."
        ]
      }
    : Schema.GameItem
