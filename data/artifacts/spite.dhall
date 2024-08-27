let shapes = ./shapes.dhall

let code =
      shapes.render
        [ [ shapes.triangle, shapes.circle, shapes.triangle ]
        , [ shapes.circle, shapes.circle, shapes.circle ]
        , [ shapes.triangle, shapes.circle, shapes.triangle ]
        ]

in  { name = "Artifact of Spite"
    , description =
        ''
        Enemies drop multiple exploding bombs on death.
        ${code}
        ''
    , image = "artifacts/artifact_of_spite.png"
    , background = "backgrounds/box_outline.png"
    , found_by =
        ''
        The pattern for this artifact can be found in the Settings screen.
        It can be found in the background next to the escape pod.
        It is easier to see by changing the LOD Bias setting to custom.
        
        IMAGE_OF_PATTERN_HERE
        ''
    }
