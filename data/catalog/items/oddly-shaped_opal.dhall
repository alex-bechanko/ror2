let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Oddly-Shaped Opal"
        , description = "Reduce damage the first time you are hit."
        , image = "items/oddly-shaped_opal.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Common
      , advanced_description =
          "Increase armor by 100 (+100 per stack) while out of danger."
      , unlocked_by = None Text
      , interactions =
        [ "Tougher Times and Safer Spaces triggers before Oddly-Shaped Opal does."
        ]
      }
    : Schema.GameItem
