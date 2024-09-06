let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Paul's Goat Hoof"
        , description = "Increases movement speed."
        , image = "items/pauls_goat_hoof.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          "Increases movement speed by 14% (+14% per stack)."
      , unlocked_by = Some
          "Complete the **Is This Bugged?** challenge. Fail the shrine of Chance 3 times in a row."
      , interactions =
        [ "Stacks with other items that provide speed like Energy Drink, Red Whip, Spinel Tonic, etc."
        ]
      }
    : Schema.GameItem
