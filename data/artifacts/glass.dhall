let shapes = ./shapes.dhall

let code =
      shapes.render
        [ [ shapes.diamond, shapes.diamond, shapes.diamond ]
        , [ shapes.diamond, shapes.diamond, shapes.diamond ]
        , [ shapes.diamond, shapes.diamond, shapes.diamond ]
        ]

in  { name = "Artifact of Glass"
    , description =
        ''
        Allies deal 500% damage, but have 10% health
        ${code}
        ''
    , image = "artifacts/artifact_of_glass.png"
    , background = "backgrounds/box_outline.png"
    , found_by =
        ''
        The pattern for this artifact can be found in A Moment, Fractured, behind the obelisk
        
        IMAGE_OF_PATTERN_HERE
        ''
    }
