let shapes = ./shapes.dhall

let code =
      shapes.render
        [ [ shapes.circle, shapes.circle, shapes.circle ]
        , [ shapes.triangle, shapes.circle, shapes.triangle ]
        , [ shapes.triangle, shapes.triangle, shapes.triangle ]
        ]

in  { name = "Artifact of Frailty"
    , description =
        ''
        Fall damage is doubled and lethal.
        ${code}
        ''
    , image = "artifacts/artifact_of_frailty.png"
    , background = "backgrounds/box_outline.png"
    }
