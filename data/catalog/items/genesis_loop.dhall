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

in  { item =
      { name = "Genesis Loop"
      , description = "Fire an electric nova at low health."
      , image = "items/genesis_loop.png"
      , background = Some "backgrounds/boss.png"
      }
    , dlc = None Dlc
    , rarity = Rarity.Boss
    , advanced_description =
        ''
        Falling below 25% health causes you to explode, dealing 6000% base damage.
        Recharges every 30 / (2 +1 per stack) seconds.
        ''
    , unlocked_by = None Text
    , interactions = Prelude.List.empty Text
    }
