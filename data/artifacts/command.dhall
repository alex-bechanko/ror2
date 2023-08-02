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
    }
