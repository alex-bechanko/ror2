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
    , found_by = 
        ''
        The pattern for this artifact is split into two pieces on the Abandoned Aquaduct level.
        One piece is between one of the tar pits and the tunnel.

        IMAGE_OF_PATTERN_PIECE1_HERE

        The other piece is inside the ancient gate, which is opened by pressing the two buttons
        on the level at the same time.

        IMAGE_OF_PATTERN_PIECE2_HERE
        ''
    }
