let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

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
