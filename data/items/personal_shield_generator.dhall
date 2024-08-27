let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Personal Shield Generator"
        , description = "Gain a recharging shield"
        , image = "items/personal_shield_generator.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          "Gain a shield equal to 8% (+8% per stack) of your maximum health. Recharges outside of danger."
      , unlocked_by = None Text
      , interactions =
        [ "Healing items do not heal back shields."
        , "Shaped Glass cuts shields gained from Personal Shield Generator in half."
        ]
      }
    : Schema.GameItem
