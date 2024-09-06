let Schema = ../schema.dhall

let shapes = ./shapes.dhall

in    { item =
        { name = "Artifact of Swarms"
        , description =
            ''
            Monster spawns are doubled, but monster health is halved.
            ''
        , image = "artifacts/artifact_of_swarms.png"
        , background = Some "backgrounds/box_outline.png"
        }
      , code =
          shapes.render
            [ [ shapes.circle, shapes.circle, shapes.triangle ]
            , [ shapes.triangle, shapes.diamond, shapes.triangle ]
            , [ shapes.triangle, shapes.circle, shapes.circle ]
            ]
      , location =
          ''
          The pattern for this artifact can be found in Rallypoint Delta.
          It can be found on the island in the lake.

          IMAGE_OF_PATTERN_HERE
          ''
      }
    : Schema.Artifact
