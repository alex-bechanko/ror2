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
        { name = "Bustling Fungus"
        , description =
            "Heal all nearby allies after standing still for 1 second."
        , image = "items/bustling_fungus.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          ''
          Standing still for 1 second creates a 3.5m (+1.5m per stack) healing zone.
          That zone heals for 4.5% (+2.25% per stack) of your health every second to all allies.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "The Engineer turrets that do not move constantly trigger Bustling Fungus."
        , "Overhealing with Bustling Fungus triggers N'Kuhana's Opinion."
        ]
      }
    : Schema.GameItem
