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
        { name = "Lost Seer's Lenses"
        , description =
            ''
            Gain a 0.5% chance to instantly kill a non-boss enemy.
            Corrupts all Lens-Maker's Glasses.
            ''
        , image = "items/lost_seers_lenses.png"
        , background = Some "backgrounds/void.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Void
      , advanced_description =
          ''
          Your attacks have a 0.5% (+0.5% per stack) chance to instantly kill a 
          non-Boss enemy.
          Corrupts all Lens-Maker's Glasses.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Brilliant Behemoth area of effect gets the same instant kill death effect of Lost Seer's Lenses"
        , "57 Leaf Clover greatly improves the chances to trigger Lost Seer's Lenses."
        , "Bandit and Railgunner still have their 'Critical Strike' effects for their moves."
        ]
      }
    : Schema.GameItem
