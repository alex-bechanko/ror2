let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Soldier's Syringe"
        , description = "Increase attack speed."
        , image = "items/soldiers_syringe.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description = "Increases attack speed by 15% (+15% per stack)."
      , unlocked_by = None Text
      , interactions =
        [ "Soldier's Syringe increases animation speed, not attack cooldowns." ]
      }
    : Schema.GameItem
