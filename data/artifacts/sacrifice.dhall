let shapes = ./shapes.dhall

let code =
      shapes.render
        [ [ shapes.triangle, shapes.triangle, shapes.triangle ]
        , [ shapes.triangle, shapes.triangle, shapes.triangle ]
        , [ shapes.triangle, shapes.diamond, shapes.triangle ]
        ]

in  { name = "Artifact of Sacrifice"
    , description =
        ''
        Monsters drop items on death, but chests no longer spawn.
        ${code}
        ''
    , image = "artifacts/artifact_of_sacrifice.png"
    , background = "backgrounds/box_outline.png"
    }
