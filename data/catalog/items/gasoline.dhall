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
        { name = "Gasoline"
        , description = "Killing an enemy ignites other nearby enemies."
        , image = "items/gasoline.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          ''
          Killing an enemy ignites all enemies within 12m (+4m per stack) for 150% base damage.
          Additionally, enemies burn for 150% (+75% per stack) base damage.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Ignition Tank augments Gasoline."
        , "Forgive Me Please triggers Gasoline."
        , "Gasoline counts as a debuff for Death Mark."
        ]
      }
    : Schema.GameItem
