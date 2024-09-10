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
      { name = "Spinel Tonic"
      , description =
          "Gain a massive boost to ALL stats. Chance to gain an affliction that reduces ALL stats."
      , image = "items/spinel_tonic.png"
      , background = Some "backgrounds/equipment.png"
      }
    , dlc = None Dlc
    , rarity = Rarity.Lunar
    , advanced_description =
        ''
        Drink the Tonic, gaining a boost for 20 seconds.
        Increases damage by +100%.
        Increases attack speed by +70%.
        Increases armor by +20. 
        Increases maximum health by +50%.
        Increases passive health regeneration by +300%.
        Increases movespeed by +30%.
        When the Tonic wears off, you have a 20% chance to gain a stack of Tonic Affliction.
        Tonic Affliction reduces all of your stats by -5% (-5% per stack)."
        ''
    , unlocked_by = Some
        "Complete the **Cosmic Explorer** challenge. Discover and enter 3 unique portals."
    , interactions =
      [ "57 Leaf Clover reduces chance for Tonic Affliction."
      , "The regeneration buff applies to Cautious Slug and Titanic Knurl."
      , ''
        Can be maintained permanently with at least one Gesture of the Drowned and
        3 of any combination of Fuel Cells and Gesture of the Drowned.
        ''
      ]
    }
