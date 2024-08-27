let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Ceremonial Dagger"
        , description = "Killing an enemy releases homing daggers."
        , image = "items/ceremonial_dagger.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          "Killing an enemy fires out 3 homing daggers that deal 150% (+150% per stack) base damage."
      , unlocked_by = None Text
      , interactions =
        [ "Forgive Me Please triggers Ceremonial Dagger."
        , "Crowbars are particularly nice for boosting damage from Ceremonial Dagger."
        ]
      }
    : Schema.GameItem
