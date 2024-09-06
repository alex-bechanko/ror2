let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Transcendence"
        , description =
            "Convert all your health into shield. Increase maximum health."
        , image = "items/transcendence.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          "Convert all but 1 health into regenerating shields. Gain 50% (+25% per stack) maximum health."
      , unlocked_by = None Text
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
