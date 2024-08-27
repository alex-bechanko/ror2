let shapes = ./shapes.dhall

let code =
      shapes.render
        [ [ shapes.diamond, shapes.diamond, shapes.diamond ]
        , [ shapes.square, shapes.square, shapes.square ]
        , [ shapes.circle, shapes.circle, shapes.circle ]
        ]

in  { name = "Artifact of Evolution"
    , description =
        ''
        Monsters gain items between stages.
        ${code}
        ''
    , image = "artifacts/artifact_of_evolution.png"
    , background = "backgrounds/box_outline.png"
    , found_by =
        ''
        The pattern for this artifact can be found in the A Moment, Whole stage.
        It can be found on one of the high platforms near the ceiling.
        
        IMAGE_OF_PATTERN_HERE
        ''
    }
