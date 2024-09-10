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
        { name = "Shuriken"
        , description =
            "Activating your Primary skill also throws a shuriken. Recharges over time."
        , image = "items/shuriken.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          Activating your Primary skill also throws a shuriken that deals 400% (+100% per stack) base damage.
          You can hold up to 3 (+1 per stack) shurikens which all reload over 10 seconds.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Shuriken are a useful ranged option for melee survivors like Loader and Mercenary."
        , "A single Shuriken is enough to trigger Kjaro's Band and Runald's Band."
        ]
      }
    : Schema.GameItem
