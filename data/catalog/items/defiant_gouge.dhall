let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

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
    , interactions = Prelude.List.empty Text
    }
