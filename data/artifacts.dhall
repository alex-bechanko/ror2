let Schema = ./schema.dhall

let artifacts : Schema.Category = 
    { name = "Artifacts"
    , items = 
        [
            { name = "Artifact of Command"
            , description = "Choose your items"
            , image = "artifacts/artifact_of_command.png"
            , background = "backgrounds/box_outline.png"
            , rarity = Schema.Rarity.Common
            }
        ]
    }


in artifacts
