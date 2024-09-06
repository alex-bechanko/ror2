let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

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
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
