let Schema = ../schema.dhall

let shapes = ./shapes.dhall

in    { item =
        { name = "Artifact of Dissonance"
        , description =
            ''
            Monsters can appear outside their usual environments.
            ''
        , image = "artifacts/artifact_of_dissonance.png"
        , background = Some "backgrounds/box_outline.png"
        }
      , code =
          shapes.render
            [ [ shapes.circle, shapes.square, shapes.square ]
            , [ shapes.square, shapes.square, shapes.square ]
            , [ shapes.square, shapes.square, shapes.circle ]
            ]
      , location =
          ''
          The pattern for this artifact can be found in the Abyssal Depths.
          It can be found on one of the high platforms near the ceiling.

          IMAGE_OF_PATTERN_HERE
          ''
      }
    : Schema.Artifact
