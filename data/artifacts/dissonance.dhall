let shapes = ./shapes.dhall

let code =
      shapes.render
        [ [ shapes.circle, shapes.square, shapes.square ]
        , [ shapes.square, shapes.square, shapes.square ]
        , [ shapes.square, shapes.square, shapes.circle ]
        ]

in  { name = "Artifact of Dissonance"
    , description =
        ''
        Monsters can appear outside their usual environments.
        ${code}
        ''
    , image = "artifacts/artifact_of_dissonance.png"
    , background = "backgrounds/box_outline.png"
    , found_by =
        ''
        The pattern for this artifact can be found in the Abyssal Depths.
        It can be found on one of the high platforms near the ceiling.
        
        IMAGE_OF_PATTERN_HERE
        ''
    }
