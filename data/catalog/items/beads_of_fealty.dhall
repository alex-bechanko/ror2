let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in  { item =
      { name = "Beads of Fealty"
      , description = "Seems to do nothing... but..."
      , image = "items/beads_of_fealty.png"
      , background = Some "backgrounds/lunar.png"
      }
    , dlc = None Dlc
    , rarity = Rarity.Lunar
    , advanced_description =
        ''
        Used on the obliteration Obelisk to enter the A Moment, Whole
        stage from the A Moment, Fractured.
        ''
    , unlocked_by = None Text
    , interactions = Prelude.List.empty Text
    }
