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
        { name = "Artifact of Devotion"
        , description =
            ''
            INSERT ARTIFACT OF DEVOTION DESCRIPTION HERE
            ''
        , image = "artifacts/artifact_of_devotion.png"
        , background = Some "backgrounds/box_outline.png"
        }
      , code =
          shapes.render
            [ [ shapes.triangle, shapes.diamond, shapes.triangle ]
            , [ shapes.square, shapes.diamond, shapes.square ]
            , [ shapes.diamond, shapes.triangle, shapes.diamond ]
            ]
      , location =
          ''
          The pattern for this artifact can be found in a Twitter post made by @RiskofRain.
          They posted a picture that contained the pattern.

          IMAGE_OF_PATTERN_HERE
          ''
      }
    : Schema.Artifact
