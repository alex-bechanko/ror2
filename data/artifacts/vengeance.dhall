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
    , found_by =
        ''
        The pattern for this artifact can be found in the Logbook.
        It can be found in the entry for the environment Hidden Realm: A Momemnt, Fractured.
        
        IMAGE_OF_PATTERN_HERE
        ''
    }
