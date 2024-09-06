let empty = https://prelude.dhall-lang.org/List/empty

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