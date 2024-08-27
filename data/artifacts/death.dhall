let shapes = ./shapes.dhall

let code =
      shapes.render
        [ [ shapes.circle, shapes.circle, shapes.circle ]
        , [ shapes.square, shapes.triangle, shapes.square ]
        , [ shapes.circle, shapes.triangle, shapes.circle ]
        ]

in  { name = "Artifact of Death"
    , description =
        ''
        When one player dies, everyone dies.
        ${code}
        ''
    , image = "artifacts/artifact_of_death.png"
    , background = "backgrounds/box_outline.png"
    , found_by = 
        ''
        The pattern for this artifact can be found in the Wetland Aspect.
        It can be found at the alter of N'kuhana in the cave under the stage.

        IMAGE_OF_PATTERN_HERE
        ''
    }
