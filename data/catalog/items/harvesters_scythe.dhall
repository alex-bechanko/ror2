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
        { name = "Harvester's Scythe"
        , description = "'Critical Strikes' heal you."
        , image = "items/harvesters_scythe.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          "Gain 5% critical chance. Critical strikes heal for 8 (+4 per stack) health."
      , unlocked_by = Some
          "Complete the **Prismatically Aligned** challenge. Complete a Prismatic Trial."
      , interactions =
        [ "The chance of 'Critical Strike' does not increase with multiple stacks of Harvester's Scythe."
        , "Shatterspleen bleed effect chance is the same as critical hit chance."
        , ''
          Predatory Instints and Harvester's Scythe increase the chance to `Critically Strike' just like Len's Maker's
          Glasses.
          Combined you need nine stacks of Lens-Maker's Glasses, one stack of Predatory Instincts, and one stack of
          Harvester's Scythe to achieve 100% chance to `Critically Strike`.
          ''
        , ''
          Harvester's Scythe works very well with survivors that have guaranteed critical hit chance
          like Bandit or Railgunner.
          ''
        ]
      }
    : Schema.GameItem
