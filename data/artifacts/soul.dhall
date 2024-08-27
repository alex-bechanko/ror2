let shapes = ./shapes.dhall

let code =
      shapes.render
        [ [ shapes.circle, shapes.square, shapes.circle ]
        , [ shapes.circle, shapes.diamond, shapes.circle ]
        , [ shapes.square, shapes.diamond, shapes.square ]
        ]

in  { name = "Artifact of Soul"
    , description =
        ''
        Wisps emerge from defeated monsters.
        ${code}
        ''
    , image = "artifacts/artifact_of_soul.png"
    , background = "backgrounds/box_outline.png"
    , found_by =
        ''
        The pattern for this artifact can be found in Scorched Acres.
        It can be found on one of the hills.
        In this case, instead of a patterned stone block, other items are used to show the pattern.
        
        IMAGE_OF_PATTERN_HERE
        ''
    }
