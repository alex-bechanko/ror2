let shapes = ./shapes.dhall

let code =
      shapes.render
        [ [ shapes.circle, shapes.circle, shapes.triangle ]
        , [ shapes.triangle, shapes.diamond, shapes.triangle ]
        , [ shapes.triangle, shapes.circle, shapes.circle ]
        ]

in  { name = "Artifact of Swarms"
    , description =
        ''
        Monster spawns are doubled, but monster health is halved.
        ${code}
        ''
    , image = "artifacts/artifact_of_swarms.png"
    , background = "backgrounds/box_outline.png"
    , found_by =
        ''
        The pattern for this artifact can be found in Rallypoint Delta.
        It can be found on the island in the lake.
        
        IMAGE_OF_PATTERN_HERE
        ''
    }
