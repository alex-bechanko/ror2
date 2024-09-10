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
        { name = "Bundle of Fireworks"
        , description =
            "Activating an interactable launches fireworks at nearby enemies."
        , image = "items/bundle_of_fireworks.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          "Activating an interactable launches 8 (+4 per stack) fireworks that deal 300% base damage."
      , unlocked_by = Some
          "Complete the **...Maybe One More** challenge. Print the same item 7 times in a row with a 3D printer"
      , interactions =
        [ ''
            Bundle of Fireworks is affected by Pocket I.C.B.M.
            Damage is increased and the number of fireworks that are released is tripled.
          ''
        , "Bundle of Fireworks can be triggered using the Remote Caffeinator's vending machine."
        ]
      }
    : Schema.GameItem
