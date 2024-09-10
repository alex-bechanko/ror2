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
        { name = "Symbiotic Scorpion"
        , description = "Permanently reduce armor on hit."
        , image = "items/symbiotic_scorpion.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Legendary
      , advanced_description =
          "On hit reduce armor by 2 (+2 per stack) permanently."
      , unlocked_by = None Text
      , interactions =
        [ "Symbiotic Scorpion counts as a debuff for Death Mark" ]
      }
    : Schema.GameItem
