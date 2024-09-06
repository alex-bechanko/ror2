let Schema = ../schema.dhall

let shapes = ./shapes.dhall

in    { item =
        { name = "Artifact of Enigma"
        , description =
            ''
            Spawn with a random equipment that changes every time it is activated.
            ''
        , image = "artifacts/artifact_of_enigma.png"
        , background = Some "backgrounds/box_outline.png"
        }
      , code =
          shapes.render
            [ [ shapes.diamond, shapes.square, shapes.square ]
            , [ shapes.triangle, shapes.square, shapes.triangle ]
            , [ shapes.circle, shapes.diamond, shapes.diamond ]
            ]
      , location =
          ''
          The pattern for this artifact can be found in the Bulwark's Ambry.
          It can be found on a large cube away from the main stage.

          IMAGE_OF_PATTERN_HERE
          ''
      }
    : Schema.Artifact
