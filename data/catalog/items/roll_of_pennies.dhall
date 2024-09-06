let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Roll of Pennies"
        , description = "Gain gold on taking damage."
        , image = "items/roll_of_pennies.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Common
      , advanced_description =
          "Gain 3 (+3 per stack) gold on taking damage from an enemy. Scales over time."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
