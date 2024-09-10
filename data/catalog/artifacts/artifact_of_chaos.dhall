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
        { name = "Artifact of Chaos"
        , description =
            ''
            Friendly fire is enabled for both survivors and monsters.
            ''
        , image = "artifacts/artifact_of_chaos.png"
        , background = Some "backgrounds/box_outline.png"
        }
      , code =
          shapes.render
            [ [ shapes.circle, shapes.triangle, shapes.circle ]
            , [ shapes.circle, shapes.triangle, shapes.circle ]
            , [ shapes.circle, shapes.triangle, shapes.circle ]
            ]
      , location =
          ''
          The pattern for this artifact is split into two pieces on the Abandoned Aquaduct level.
          One piece is between one of the tar pits and the tunnel.

          IMAGE_OF_PATTERN_PIECE1_HERE

          The other piece is inside the ancient gate, which is opened by pressing the two buttons
          on the level at the same time.

          IMAGE_OF_PATTERN_PIECE2_HERE
          ''
      }
    : Schema.Artifact
