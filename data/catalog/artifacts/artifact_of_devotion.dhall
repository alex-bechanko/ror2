let Schema = ../schema.dhall

let shapes = ./shapes.dhall

in    { item =
        { name = "Artifact of Devotion"
        , description =
            ''
            INSERT ARTIFACT OF DEVOTION DESCRIPTION HERE
            ''
        , image = "artifacts/artifact_of_devotion.png"
        , background = Some "backgrounds/box_outline.png"
        }
      , code =
          shapes.render
            [ [ shapes.triangle, shapes.diamond, shapes.triangle ]
            , [ shapes.square, shapes.diamond, shapes.square ]
            , [ shapes.diamond, shapes.triangle, shapes.diamond ]
            ]
      , location =
          ''
          The pattern for this artifact can be found in a Twitter post made by @RiskofRain.
          They posted a picture that contained the pattern.

          IMAGE_OF_PATTERN_HERE
          ''
      }
    : Schema.Artifact
