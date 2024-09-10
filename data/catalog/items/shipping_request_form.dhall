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
        { name = "Shipping Request Form"
        , description =
            "Get a delivery each stage that contains powerful items."
        , image = "items/shipping_request_form.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          A delivery containing 2 items (79%/20%/1%) will appear in a random location on each stage.
          Chances of rare items increases per stack, by following these probabilities:
          ```
          p(Legendary) = (0.01 * n^2) / ( (0.01 * n^2) + (0.2 * n) + (0.79) )
          p(Uncommon)  = (0.2  * n)   / ( (0.01 * n^2) + (0.2 * n) + (0.79) )
          p(Common)    = 0.79         / ( (0.01 * n^2) + (0.2 * n) + (0.79) )
          ```
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Probability of rare items is aggregated across players"
        , "Executive Card allows you to take both items from the Shipping Request Form drop."
        , ''
          Giving Shipping Request Form to a Lemurian from the Artifact of Devotion treats it
          as if you are giving a Shipping Request Form to them all, and stacks accordingly.
          ''
        ]
      }
    : Schema.GameItem
