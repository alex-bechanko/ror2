let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Sticky Bomb"
        , description = "Chance on hit to attach a bomb to enemies."
        , image = "items/sticky_bomb.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          "5% (+5% per stack) chance on hit to attach a bomb to an enemy, detonating for 180% TOTAL damage."
      , unlocked_by = None Text
      , interactions =
        [ "Sticky Bombs do not trigger any other on hit effects." ]
      }
    : Schema.GameItem
