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
        { name = "Squid Polyp"
        , description =
            "Activating an interactable summons a Squid Turret nearby."
        , image = "items/squid_polyp.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          Activating an interactable summons a Squid Turret.
          Squid Turrets attack nearby enemies at 100% (+100% per stack) attack speed.
          Lasts 30 seconds.
          ''
      , unlocked_by = Some
          "Complete the **Automation Activation** challenge. Activate 6 turrets in a single run."
      , interactions =
        [ "Bundle of Fireworks can be triggered using the Remote Caffeinator's vending machine."
        ]
      }
    : Schema.GameItem
