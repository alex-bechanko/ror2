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

let shapes = ./shapes.dhall

in    { item =
        { name = "Artifact of Frailty"
        , description =
            ''
            Fall damage is doubled and lethal.
            ''
        , image = "artifacts/artifact_of_frailty.png"
        , background = Some "backgrounds/box_outline.png"
        }
      , code =
          shapes.render
            [ [ shapes.circle, shapes.circle, shapes.circle ]
            , [ shapes.triangle, shapes.circle, shapes.triangle ]
            , [ shapes.triangle, shapes.triangle, shapes.triangle ]
            ]
      , location =
          ''
          One piece of the pattern can be found in Siren's call on the left side of the cliff

          IMAGE_OF_PATTERN_PIECE1_HERE

          The second piece can be found in the Void Fields at the bottom of the hill leading to the portal.

          IMAGE_OF_PATTERN_PIECE2_HERE
          ''
      }
    : Schema.Artifact
