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
        { name = "Interstellar Desk Plant"
        , description = "Plant a healing fruit on kill."
        , image = "items/interstellar_desk_plant.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          ''
          On kill, plant a healing fruit seed that grows into a plant after 5 seconds.
          The plant heals for 5% of maximum health every 0.5 second to all allies within 10m (+5.0m per stack).
          Lasts 10 seconds.
          ''
      , unlocked_by = None Text
      , interactions = [ "Forgive Me Please triggers Interstellar Desk Plant" ]
      }
    : Schema.GameItem
