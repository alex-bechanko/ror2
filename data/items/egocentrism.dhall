let empty = https://prelude.dhall-lang.org/List/empty

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
      , interactions = empty Text
      }
    : Schema.GameItem
