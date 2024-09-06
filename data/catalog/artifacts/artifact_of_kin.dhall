let Schema = ../schema.dhall

let shapes = ./shapes.dhall

in    { item =
        { name = "Artifact of Kin"
        , description =
            ''
            Monsters will be of only one type per stage.
            ''
        , image = "artifacts/artifact_of_kin.png"
        , background = Some "backgrounds/box_outline.png"
        }
      , code =
          shapes.render
            [ [ shapes.circle, shapes.triangle, shapes.triangle ]
            , [ shapes.diamond, shapes.circle, shapes.triangle ]
            , [ shapes.diamond, shapes.diamond, shapes.circle ]
            ]
      , location =
          ''
          The pattern for this artifact can be found in Distant Roost.
          It can be found near a ledge on top of the map.

          IMAGE_OF_PATTERN_HERE
          ''
      }
    : Schema.Artifact
