let empty = https://prelude.dhall-lang.org/List/empty

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
      , interactions = empty Text
      }
    : Schema.GameItem
