let Schema = ../schema.dhall

let shapes = ./shapes.dhall

in    { item =
        { name = "Artifact of Metamorphosis"
        , description =
            ''
            Players always spawn as a random survivor.
            ''
        , image = "artifacts/artifact_of_metamorphosis.png"
        , background = Some "backgrounds/box_outline.png"
        }
      , code =
          shapes.render
            [ [ shapes.diamond, shapes.square, shapes.circle ]
            , [ shapes.diamond, shapes.square, shapes.circle ]
            , [ shapes.diamond, shapes.square, shapes.circle ]
            ]
      , location =
          ''
          The pattern for this artifact can be found in Titanic Plains.
          It can be found on one of the stone arches in the distance near the cliff.

          IMAGE_OF_PATTERN_HERE
          ''
      }
    : Schema.Artifact
