let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Chronobauble"
        , description = "Slow enemies on hit."
        , image = "items/chronobauble.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          "Slow enemies on hit for -60% movement speed for 2s (+2s per stack)."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
