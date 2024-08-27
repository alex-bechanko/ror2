let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Medkit"
        , description = "Receive a delayed heal after taking damage."
        , image = "items/medkit.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          "2 seconds after getting hurt, heal for 20 plus an additional 5% (+5% per stack) of maximum health."
      , unlocked_by = Some
          "Complete the **Elite Slayer** challenge. Defeat an elite-type monster."
      , interactions =
        [ "Twenty stacks of Medkit is enough to fully recover your health."
        , "Rejuvenation Racks double the healing from Medkits."
        ]
      }
    : Schema.GameItem
