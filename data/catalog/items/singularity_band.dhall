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
        { name = "Singularity Band"
        , description =
            ''
            High damage hits also create unstable black holes.
            Recharges over time.
            Corrupts all Runald's and Kjaro's Bands.
            ''
        , image = "items/singularity_band.png"
        , background = Some "backgrounds/void.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Void
      , advanced_description =
          ''
          Hits that deal more than 400% damage also fire a black hole that draws
          enemies within 15m into its center.
          Lasts 5 seconds before collapsing, dealing 100% (+100% per stack) TOTAL
          damage.
          Recharges every 20 seconds.
          Corrupts all Runald's and Kjaro's Bands.
          ''
      , unlocked_by = None Text
      , interactions = [ "Blast Shower resets Singularity Band cooldown." ]
      }
    : Schema.GameItem
