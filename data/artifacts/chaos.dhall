let shapes = ./shapes.dhall

let code =
      shapes.render
        [ [ shapes.circle, shapes.triangle, shapes.circle ]
        , [ shapes.circle, shapes.triangle, shapes.circle ]
        , [ shapes.circle, shapes.triangle, shapes.circle ]
        ]

in  { name = "Artifact of Chaos"
    , description =
        ''
        Friendly fire is enabled for both survivors and monsters.
        ${code}
        ''
    , image = "artifacts/artifact_of_chaos.png"
    , background = "backgrounds/box_outline.png"
    }
