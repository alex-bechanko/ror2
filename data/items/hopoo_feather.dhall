let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Hopoo Feather"
        , description = "Gain an extra jump."
        , image = "items/hopoo_feather.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description = "Gain +1 (+1 per stack) maximum jump count."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
