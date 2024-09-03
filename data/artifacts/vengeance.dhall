let Schema = ../schema.dhall

let shapes = ./shapes.dhall

in    { item =
        { name = "Artifact of Vengeance"
        , description =
            ''
            Your relentless doppelganger will invade every 10 minutes.
            ''
        , image = "artifacts/artifact_of_vengeance.png"
        , background = Some "backgrounds/box_outline.png"
        }
      , code =
          shapes.render
            [ [ shapes.diamond, shapes.square, shapes.square ]
            , [ shapes.diamond, shapes.circle, shapes.square ]
            , [ shapes.diamond, shapes.square, shapes.square ]
            ]
      , location =
          ''
          The pattern for this artifact can be found in the Logbook.
          It can be found in the entry for the environment Hidden Realm: A Momemnt, Fractured.

          IMAGE_OF_PATTERN_HERE
          ''
      }
    : Schema.Artifact
