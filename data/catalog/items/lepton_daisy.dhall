let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Lepton Daisy"
        , description =
            ''
            Periodically release a healing nova during the Teleporter event and
            'Holdout Zones' such as the Void Fields.
            ''
        , image = "items/lepton_daisy.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          Release a healing nova during the Teleporter event, healing all nearby
          allies for 50% of their maximum health.
          Occurs 1 (+1 per stack) times.
          ''
      , unlocked_by = None Text
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
