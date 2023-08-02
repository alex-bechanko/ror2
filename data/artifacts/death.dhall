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
    }
