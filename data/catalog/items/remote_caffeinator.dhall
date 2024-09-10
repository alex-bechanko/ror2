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
        { name = "Remote Caffeinator"
        , description = "Request a healing soda machine."
        , image = "items/remote_caffeinator.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Equipment
      , advanced_description =
          ''
          Request an Eclipse Zero Vending Machine from the UES Safe Travels.
          Delivery guaranteed in 5 seconds, dealing 2000% damage.
          Heal up to 3 targets for 25% of their maximum health.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Buying soda from Remote Caffeinator triggers Bundle of Fireworks."
        , "Buying soda from Remote Caffeinator triggers Squid Polyp."
        ]
      }
    : Schema.GameItem
