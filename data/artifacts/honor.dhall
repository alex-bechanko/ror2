let shapes = ./shapes.dhall

let code =
      shapes.render
        [ [ shapes.square, shapes.square, shapes.square ]
        , [ shapes.square, shapes.triangle, shapes.square ]
        , [ shapes.square, shapes.square, shapes.square ]
        ]

in  { name = "Artifact of Honor"
    , description =
        ''
        Enemies can only spawn as elites.
        ${code}
        ''
    , image = "artifacts/artifact_of_honor.png"
    , background = "backgrounds/box_outline.png"
    , found_by =
        ''
        The pattern for this artifact can be found in the Sky Meadow.
        It can be found next to the area where artifact codes are entered.
        
        IMAGE_OF_PATTERN_HERE
        ''
    }
