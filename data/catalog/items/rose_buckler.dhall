let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Rose Buckler"
        , description = "Reduce incoming damage while sprinting."
        , image = "items/rose_buckler.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          "Increase armor by 30 (+30 per stack) while sprinting."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
