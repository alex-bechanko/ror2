let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Goobo Jr."
        , description = "Create a clone of you for 30 seconds."
        , image = "items/goobo_jr.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Equipment
      , advanced_description =
          "Spawn a gummy clone that has 170% damage and 170% health. Expires in 30 seconds."
      , unlocked_by = None Text
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
