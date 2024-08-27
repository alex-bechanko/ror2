let shapes = ./shapes.dhall

let code =
      shapes.render
        [ [ shapes.diamond, shapes.square, shapes.square ]
        , [ shapes.triangle, shapes.square, shapes.triangle ]
        , [ shapes.circle, shapes.diamond, shapes.diamond ]
        ]

in  { name = "Artifact of Enigma"
    , description =
        ''
        Spawn with a random equipment that changes every time it is activated.
        ${code}
        ''
    , image = "artifacts/artifact_of_enigma.png"
    , background = "backgrounds/box_outline.png"
    , found_by =
        ''
        The pattern for this artifact can be found in the Bulwark's Ambry.
        It can be found on a large cube away from the main stage.
        
        IMAGE_OF_PATTERN_HERE
        ''
    }
