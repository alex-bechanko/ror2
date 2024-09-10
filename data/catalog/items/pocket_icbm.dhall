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
        { name = "Pocket I.C.B.M."
        , description =
            "All Missile items deal more damage and fire an additional two missiles."
        , image = "items/pocket_icbm.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Legendary
      , advanced_description =
          ''
          All missile items and equipment fire an additional 2 missiles.
          Increase missile damage by 0% (+50% per stack)
          ''
      , unlocked_by = None Text
      , interactions =
        [ ''
          Items affected by Pocket I.C.B.M.:
          - Bundle of Fireworks
          - AtG Missile Mk. 1
          - Plasma Shrimp
          - Disposable Rocket Launcher
          ''
        , "Engineer's Thermal Harpoons are augmented by Pocket I.C.B.M."
        ]
      }
    : Schema.GameItem
