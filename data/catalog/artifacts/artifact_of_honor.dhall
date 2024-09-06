let Schema = ../schema.dhall

let shapes = ./shapes.dhall

in    { item =
        { name = "Artifact of Honor"
        , description =
            ''
            Enemies can only spawn as elites.
            ''
        , image = "artifacts/artifact_of_honor.png"
        , background = Some "backgrounds/box_outline.png"
        }
      , code =
          shapes.render
            [ [ shapes.square, shapes.square, shapes.square ]
            , [ shapes.square, shapes.triangle, shapes.square ]
            , [ shapes.square, shapes.square, shapes.square ]
            ]
      , location =
          ''
          The pattern for this artifact can be found in the Sky Meadow.
          It can be found next to the area where artifact codes are entered.

          IMAGE_OF_PATTERN_HERE
          ''
      }
    : Schema.Artifact
