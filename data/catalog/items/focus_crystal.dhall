let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Focus Crystal"
        , description = "Deal bonus damage to nearby enemies."
        , image = "items/focus_crystal.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          "Increase damage to enemies within 13m by 20% (+20% per stack)."
      , unlocked_by = None Text
      , interactions =
        [ "Focus Crystal is very useful for melee characters like Loader, Mercenary, and Bandit"
        ]
      }
    : Schema.GameItem
