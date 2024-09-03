let Schema = ../schema.dhall

let shapes = ./shapes.dhall

in    { item =
        { name = "Artifact of Sacrifice"
        , description =
            ''
            Monsters drop items on death, but chests no longer spawn.
            ''
        , image = "artifacts/artifact_of_sacrifice.png"
        , background = Some "backgrounds/box_outline.png"
        }
      , code =
          shapes.render
            [ [ shapes.triangle, shapes.triangle, shapes.triangle ]
            , [ shapes.triangle, shapes.triangle, shapes.triangle ]
            , [ shapes.triangle, shapes.diamond, shapes.triangle ]
            ]
      , location =
          ''
          The pattern for this artifact can be found in Gilded Coast.
          It can be found underwater in the lake near the center of the stage.

          IMAGE_OF_PATTERN_HERE
          ''
      }
    : Schema.Artifact
