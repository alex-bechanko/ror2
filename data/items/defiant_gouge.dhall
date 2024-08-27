let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in  { item =
      { name = "Defiant Gouge"
      , description = "Using a Shrine summons enemies nearby. "
      , image = "items/defiant_gouge.png"
      , background = Some "backgrounds/lunar.png"
      }
    , dlc = None Dlc
    , rarity = Rarity.Lunar
    , advanced_description =
        "Using a Shrine summons enemies (stronger per stack) nearby. Scales over time."
    , unlocked_by = None Text
    , interactions = empty Text
    }
