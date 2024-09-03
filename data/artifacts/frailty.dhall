let Schema = ../schema.dhall

let shapes = ./shapes.dhall

in    { item =
        { name = "Artifact of Frailty"
        , description =
            ''
            Fall damage is doubled and lethal.
            ''
        , image = "artifacts/artifact_of_frailty.png"
        , background = Some "backgrounds/box_outline.png"
        }
      , code =
          shapes.render
            [ [ shapes.circle, shapes.circle, shapes.circle ]
            , [ shapes.triangle, shapes.circle, shapes.triangle ]
            , [ shapes.triangle, shapes.triangle, shapes.triangle ]
            ]
      , location =
          ''
          One piece of the pattern can be found in Siren's call on the left side of the cliff

          IMAGE_OF_PATTERN_PIECE1_HERE

          The second piece can be found in the Void Fields at the bottom of the hill leading to the portal.

          IMAGE_OF_PATTERN_PIECE2_HERE
          ''
      }
    : Schema.Artifact
