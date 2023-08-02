let shapes = ./shapes.dhall

let code =
      shapes.render
        [ [ shapes.diamond, shapes.square, shapes.square ]
        , [ shapes.diamond, shapes.circle, shapes.square ]
        , [ shapes.diamond, shapes.square, shapes.square ]
        ]

in  { name = "Artifact of Vengeance"
    , description =
        ''
        Your relentless doppelganger will invade every 10 minutes.
        ${code}
        ''
    , image = "artifacts/artifact_of_vengeance.png"
    , background = "backgrounds/box_outline.png"
    }
