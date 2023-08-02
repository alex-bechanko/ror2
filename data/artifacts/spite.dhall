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
    }
