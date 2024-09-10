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
        { name = "Power Elixir"
        , description =
            "Receive an instant heal at low health. Consumed on use."
        , image = "items/power_elixir.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Common
      , advanced_description =
          "Taking damage to below 25% health consumes this item, healing you for 75% of maximum health."
      , unlocked_by = None Text
      , interactions =
        [ ''
          You lose Power Elixirs before losing Delicate Watches.
          That means they can serve as a form of protection for them.
          ''
        , "The second or third interaction with a Shrine of Blood can consume Power Elixirs immediately."
        , "Useful for keeping Engineer's turrets alive against powerful or numerous enemies"
        ]
      }
    : Schema.GameItem
