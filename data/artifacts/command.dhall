let shapes = ./shapes.dhall

let code =
      shapes.render
        [ [ shapes.square, shapes.square, shapes.square ]
        , [ shapes.square, shapes.square, shapes.square ]
        , [ shapes.triangle, shapes.triangle, shapes.triangle ]
        ]

in  { name = "Artifact of Command"
    , description =
        ''
        Choose your items.
        ${code}
        ''
    , image = "artifacts/artifact_of_command.png"
    , background = "backgrounds/box_outline.png"
    , found_by =
        ''
        The pattern for this artifact can be found in the Bazaar Between Time.
        It can be found by looking in the reflection behind the shopkeeper.
        
        IMAGE_OF_PATTERN_HERE
        ''
    }
