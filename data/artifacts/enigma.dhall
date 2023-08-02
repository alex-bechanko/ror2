let shapes = ./shapes.dhall

let code =
      shapes.render
        [ [ shapes.diamond, shapes.square, shapes.square ]
        , [ shapes.triangle, shapes.square, shapes.triangle ]
        , [ shapes.circle, shapes.diamond, shapes.diamond ]
        ]

in  { name = "Artifact of Enigma"
    , description =
        ''
        Spawn with a random equipment that changes every time it is activated.
        ${code}
        ''
    , image = "artifacts/artifact_of_enigma.png"
    , background = "backgrounds/box_outline.png"
    }
