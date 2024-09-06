let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Energy Drink"
        , description = "Increase sprint speed by +25%."
        , image = "items/energy_drink.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          "Sprint speed is improved by 25% (+25% per stack)."
      , unlocked_by = None Text
      , interactions =
        [ "Stacks with other items that provide speed like Paul's Goat Hoof, Red Whip, Spinel Tonic, etc."
        ]
      }
    : Schema.GameItem
