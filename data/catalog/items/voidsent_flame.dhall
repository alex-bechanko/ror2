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

in  { item =
      { name = "Voidsent Flame"
      , description =
          "Full health enemies also detonate on hit. Corrupts all Will-o'-the-wisps."
      , image = "items/voidsent_flame.png"
      , background = Some "backgrounds/void.png"
      }
    , dlc = Some Dlc.SurvivorsOfTheVoid
    , rarity = Rarity.Void
    , advanced_description =
        ''
        Upon hitting an enemy at full health, spawn a lava pillar in a 12m (+2.4m per stack) radius.
        Lava pillar does for 260% (+156% per stack) base damage. 
        Corrupts all Will-o'-the-wisps.
        ''
    , unlocked_by = None Text
    , interactions =
      [ ''
        Helfire Tincture can trigger Voidsent Flame on yourself when you are full health.
        The Voidsent Flame will not damage you.
        ''
      ]
    }
