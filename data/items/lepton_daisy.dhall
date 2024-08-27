let empty = https://prelude.dhall-lang.org/List/empty

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
      , interactions = empty Text
      }
    : Schema.GameItem
