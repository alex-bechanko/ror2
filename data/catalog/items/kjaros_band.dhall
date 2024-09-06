let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Kjaro's Band"
        , description =
            "High damage hits also blasts enemies with a runic flame tornado. Recharges over time."
        , image = "items/kjaros_band.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          Hits that deal more than 400% damage also blasts enemies with a runic flame tornado.
          The tornado deals 300% (+300% per stack) TOTAL damage over time.
          Recharges every 10 seconds.
          ''
      , unlocked_by = Some
          ''
          Complete the **Death Do Us Part** challenge.
          Discover the hidden chamber in the Abandoned Aquaduct.
          ''
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
