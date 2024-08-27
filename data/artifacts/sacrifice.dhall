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
    , found_by =
        ''
        The pattern for this artifact can be found in Gilded Coast.
        It can be found underwater in the lake near the center of the stage.
        
        IMAGE_OF_PATTERN_HERE
        ''
    }
