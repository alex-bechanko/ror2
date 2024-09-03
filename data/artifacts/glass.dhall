let Schema = ../schema.dhall

let shapes = ./shapes.dhall

in    { item =
        { name = "Artifact of Glass"
        , description =
            ''
            Allies deal 500% damage, but have 10% health
            ''
        , image = "artifacts/artifact_of_glass.png"
        , background = Some "backgrounds/box_outline.png"
        }
      , code =
          shapes.render
            [ [ shapes.diamond, shapes.diamond, shapes.diamond ]
            , [ shapes.diamond, shapes.diamond, shapes.diamond ]
            , [ shapes.diamond, shapes.diamond, shapes.diamond ]
            ]
      , location =
          ''
          The pattern for this artifact can be found in A Moment, Fractured, behind the obelisk

          IMAGE_OF_PATTERN_HERE
          ''
      }
    : Schema.Artifact
