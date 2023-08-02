let shapes = ./shapes.dhall

let code =
      shapes.render
        [ [ shapes.circle, shapes.triangle, shapes.triangle ]
        , [ shapes.diamond, shapes.circle, shapes.triangle ]
        , [ shapes.diamond, shapes.diamond, shapes.circle ]
        ]

in  { name = "Artifact of Kin"
    , description =
        ''
        Monsters will be of only one type per stage.
        ${code}
        ''
    , image = "artifacts/artifact_of_kin.png"
    , background = "backgrounds/box_outline.png"
    }
