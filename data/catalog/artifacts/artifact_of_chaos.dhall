let Schema = ../schema.dhall

let shapes = ./shapes.dhall

in    { item =
        { name = "Artifact of Chaos"
        , description =
            ''
            Friendly fire is enabled for both survivors and monsters.
            ''
        , image = "artifacts/artifact_of_chaos.png"
        , background = Some "backgrounds/box_outline.png"
        }
      , code =
          shapes.render
            [ [ shapes.circle, shapes.triangle, shapes.circle ]
            , [ shapes.circle, shapes.triangle, shapes.circle ]
            , [ shapes.circle, shapes.triangle, shapes.circle ]
            ]
      , location =
          ''
          The pattern for this artifact is split into two pieces on the Abandoned Aquaduct level.
          One piece is between one of the tar pits and the tunnel.

          IMAGE_OF_PATTERN_PIECE1_HERE

          The other piece is inside the ancient gate, which is opened by pressing the two buttons
          on the level at the same time.

          IMAGE_OF_PATTERN_PIECE2_HERE
          ''
      }
    : Schema.Artifact
