let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Mocha"
        , description = "Slightly increase attack speed and movement speed"
        , image = "items/mocha.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Common
      , advanced_description =
          "Increases attack speed by 7.5% (+7.5 per stack) and movement speed by 7% (+7% per stack). "
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
