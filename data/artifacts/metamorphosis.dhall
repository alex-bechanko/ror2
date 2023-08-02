let shapes = ./shapes.dhall

let code =
      shapes.render
        [ [ shapes.diamond, shapes.square, shapes.circle ]
        , [ shapes.diamond, shapes.square, shapes.circle ]
        , [ shapes.diamond, shapes.square, shapes.circle ]
        ]

in  { name = "Artifact of Metamorphosis"
    , description =
        ''
        Players always spawn as a random survivor.
        ${code}
        ''
    , image = "artifacts/artifact_of_metamorphosis.png"
    , background = "backgrounds/box_outline.png"
    }
