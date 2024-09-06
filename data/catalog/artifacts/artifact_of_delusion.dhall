let Schema = ../schema.dhall

let shapes = ./shapes.dhall

in    { item =
        { name = "Artifact of Delusion"
        , description =
            ''
            INSERT ARTIFACT OF DELUSION DESCRIPTION HERE
            ''
        , image = "artifacts/artifact_of_delusion.png"
        , background = Some "backgrounds/box_outline.png"
        }
      , code =
          shapes.render
            [ [ shapes.square, shapes.circle, shapes.square ]
            , [ shapes.circle, shapes.circle, shapes.circle ]
            , [ shapes.square, shapes.triangle, shapes.square ]
            ]
      , location =
          ''
          The pattern for this artifact can be found in the
          [Devotion Update Trailer](https://www.youtube.com/watch?v=NLvYMoxXze4).
          It can be found in the background of the text box when the video showcases
          the new Verdant Falls stage.

          IMAGE_OF_PATTERN_HERE
          ''
      }
    : Schema.Artifact
