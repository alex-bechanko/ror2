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
let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Runald's Band"
        , description =
            "High damage hits also blasts enemies with runic ice. Recharges over time."
        , image = "items/runalds_band.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          Hits that deal more than 400% damage also blasts enemies with a runic ice blast.
          The ice blast slows the enemy by 80% for 3s (+3s per stack).
          The ice blast also deals 250% (+250% per stack) TOTAL damage.
          Recharges every 10 seconds."
          ''
      , unlocked_by = Some
          ''
          Complete the **Death Do Us Part** challenge.
          Discover the hidden chamber in the Abandoned Aquaduct.
          ''
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
