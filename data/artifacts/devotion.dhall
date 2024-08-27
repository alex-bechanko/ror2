let shapes = ./shapes.dhall

let code =
      shapes.render
        [ [ shapes.triangle, shapes.diamond, shapes.triangle ]
        , [ shapes.square, shapes.diamond, shapes.square ]
        , [ shapes.diamond, shapes.triangle, shapes.diamond ]
        ]

in  { name = "Artifact of Devotion"
    , description =
        ''
        INSERT ARTIFACT OF DEVOTION DESCRIPTION HERE
        ${code}
        ''
    , image = "artifacts/artifact_of_devotion.png"
    , background = "backgrounds/box_outline.png"
    , found_by =
        ''
        The pattern for this artifact can be found in a Twitter post made by @RiskofRain.
        They posted a picture that contained the pattern.
        
        IMAGE_OF_PATTERN_HERE
        ''
    }
