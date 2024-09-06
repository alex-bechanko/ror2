let Schema = ../schema.dhall

let shapes = ./shapes.dhall

in    { item =
        { name = "Artifact of Death"
        , description =
            ''
            When one player dies, everyone dies.
            ''
        , image = "artifacts/artifact_of_death.png"
        , background = Some "backgrounds/box_outline.png"
        }
      , code =
          shapes.render
            [ [ shapes.circle, shapes.circle, shapes.circle ]
            , [ shapes.square, shapes.triangle, shapes.square ]
            , [ shapes.circle, shapes.triangle, shapes.circle ]
            ]
      , location =
          ''
          The pattern for this artifact can be found in the Wetland Aspect.
          It can be found at the alter of N'kuhana in the cave under the stage.

          IMAGE_OF_PATTERN_HERE
          ''
      }
    : Schema.Artifact
