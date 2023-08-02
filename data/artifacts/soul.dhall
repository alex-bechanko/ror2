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
    }
