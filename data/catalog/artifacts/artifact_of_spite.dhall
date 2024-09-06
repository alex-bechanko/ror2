let Schema = ../schema.dhall

let shapes = ./shapes.dhall

in    { item =
        { name = "Artifact of Spite"
        , description =
            ''
            Enemies drop multiple exploding bombs on death.
            ''
        , image = "artifacts/artifact_of_spite.png"
        , background = Some "backgrounds/box_outline.png"
        }
      , code =
          shapes.render
            [ [ shapes.triangle, shapes.circle, shapes.triangle ]
            , [ shapes.circle, shapes.circle, shapes.circle ]
            , [ shapes.triangle, shapes.circle, shapes.triangle ]
            ]
      , location =
          ''
          The pattern for this artifact can be found in the Settings screen.
          It can be found in the background next to the escape pod.
          It is easier to see by changing the LOD Bias setting to custom.

          IMAGE_OF_PATTERN_HERE
          ''
      }
    : Schema.Artifact
