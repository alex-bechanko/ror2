let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Egocentrism"
        , description =
            "Gain multiple orbiting bombs. Every minute, assimilate another item into Egocentrism."
        , image = "items/egocentrism.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          ''
          Every 3 (-50% per stack) seconds, gain an orbiting bomb that detonates on 
          impact for 360% damage, up to a maximum of 3 bombs (+1 per stack).
          Every 60 seconds, a random item is converted into this item.
          ''
      , unlocked_by = None Text
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
