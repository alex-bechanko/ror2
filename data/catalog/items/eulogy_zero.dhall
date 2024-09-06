let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Eulogy Zero"
        , description =
            "Items and equipment have a small chance to transform into a Lunar item instead."
        , image = "items/eulogy_zero.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          "Items have a 5% (+5% per stack) chance to become a Lunar item instead."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
