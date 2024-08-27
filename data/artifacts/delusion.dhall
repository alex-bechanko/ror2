let shapes = ./shapes.dhall

let code =
      shapes.render
        [ [ shapes.square, shapes.circle, shapes.square ]
        , [ shapes.circle, shapes.circle, shapes.circle ]
        , [ shapes.square, shapes.triangle, shapes.square ]
        ]

in  { name = "Artifact of Delusion"
    , description =
        ''
        INSERT ARTIFACT OF DELUSION DESCRIPTION HERE
        ${code}
        ''
    , image = "artifacts/artifact_of_delusion.png"
    , background = "backgrounds/box_outline.png"
    , found_by =
        ''
        The pattern for this artifact can be found in the
        [Devotion Update Trailer](https://www.youtube.com/watch?v=NLvYMoxXze4).
        It can be found in the background of the text box when the video showcases
        the new Verdant Falls stage.
        
        IMAGE_OF_PATTERN_HERE
        ''
    }
