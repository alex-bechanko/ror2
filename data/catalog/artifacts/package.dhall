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

let artifacts
    : List Schema.Artifact
    = [ ./artifact_of_chaos.dhall
      , ./artifact_of_command.dhall
      , ./artifact_of_death.dhall
      , ./artifact_of_dissonance.dhall
      , ./artifact_of_delusion.dhall
      , ./artifact_of_devotion.dhall
      , ./artifact_of_enigma.dhall
      , ./artifact_of_evolution.dhall
      , ./artifact_of_frailty.dhall
      , ./artifact_of_glass.dhall
      , ./artifact_of_honor.dhall
      , ./artifact_of_kin.dhall
      , ./artifact_of_metamorphosis.dhall
      , ./artifact_of_sacrifice.dhall
      , ./artifact_of_soul.dhall
      , ./artifact_of_spite.dhall
      , ./artifact_of_swarms.dhall
      , ./artifact_of_vengeance.dhall
      ]

in  artifacts
