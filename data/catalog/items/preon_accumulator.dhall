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
        { name = "Preon Accumulator"
        , description =
            "Fire a ball of energy that electrocutes nearby enemies before detonating."
        , image = "items/preon_accumulator.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Equipment
      , advanced_description =
          ''
          Fires preon tendrils, zapping enemies within 35m for up to 600% damage/second.
          On contact, detonate in an enormous 20m explosion for 4000% damage.
          ''
      , unlocked_by = Some
          ''
          Complete the **[REDACTED]** challenge.
          Open the Timed Security Chest on Rallypoint Delta.
          ''
      , interactions =
        [ ''
          Kjaro's Band, Runald's Band and the Singularity Band can be triggered by 
          the large blast and the arcs of lightning from Preon Accumulator.
          ''
        ]
      }
    : Schema.GameItem
