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
        { name = "Laser Scope"
        , description =
            "Your 'Critical Strikes' deal an additional 100% damage."
        , image = "items/laser_scope.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Legendary
      , advanced_description =
          "Critical Strikes deal an additional 100% damage (+100% per stack)."
      , unlocked_by = None Text
      , interactions =
        [ ''
          For Railgunner's 'Critical Strike' damage, 1 Laser Scope = 10 Lens-Maker's Glasses.
          ''
        ]
      }
    : Schema.GameItem
