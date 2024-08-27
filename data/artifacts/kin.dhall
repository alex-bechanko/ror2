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
    , found_by =
        ''
        The pattern for this artifact can be found in Distant Roost.
        It can be found near a ledge on top of the map.
        
        IMAGE_OF_PATTERN_HERE
        ''
    }
