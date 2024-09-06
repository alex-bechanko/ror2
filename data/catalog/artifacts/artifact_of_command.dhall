let Schema = ../schema.dhall

let shapes = ./shapes.dhall

in    { item =
        { name = "Artifact of Command"
        , description =
            ''
            Choose your items.
            ''
        , image = "artifacts/artifact_of_command.png"
        , background = Some "backgrounds/box_outline.png"
        }
      , code =
          shapes.render
            [ [ shapes.square, shapes.square, shapes.square ]
            , [ shapes.square, shapes.square, shapes.square ]
            , [ shapes.triangle, shapes.triangle, shapes.triangle ]
            ]
      , location =
          ''
          The pattern for this artifact can be found in the Bazaar Between Time.
          It can be found by looking in the reflection behind the shopkeeper.

          IMAGE_OF_PATTERN_HERE
          ''
      }
    : Schema.Artifact
