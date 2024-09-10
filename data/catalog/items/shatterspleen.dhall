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
        { name = "Shatterspleen"
        , description =
            "Critical strikes always bleed enemies. Bleeding enemies now explode."
        , image = "items/shatterspleen.png"
        , background = Some "backgrounds/boss.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Boss
      , advanced_description =
          ''
          Gain 5% critical chance.
          Critical Strikes bleed enemies for 240% base damage.
          Bleeding enemies explode on death for 400% (+400% per stack) damage,
          plus an additional 15% (+15% per stack) of their maximum health.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Tri-Tip Dagger bleed is the same as Shatterspleen bleed effect" ]
      }
    : Schema.GameItem
