let shapes = ./shapes.dhall

let code =
      shapes.render
        [ [ shapes.diamond, shapes.square, shapes.circle ]
        , [ shapes.diamond, shapes.square, shapes.circle ]
        , [ shapes.diamond, shapes.square, shapes.circle ]
        ]

in  { name = "Artifact of Metamorphosis"
    , description =
        ''
        Players always spawn as a random survivor.
        ${code}
        ''
    , image = "artifacts/artifact_of_metamorphosis.png"
    , background = "backgrounds/box_outline.png"
    , found_by =
        ''
        The pattern for this artifact can be found in Titanic Plains.
        It can be found on one of the stone arches in the distance near the cliff.
        
        IMAGE_OF_PATTERN_HERE
        ''
    }
