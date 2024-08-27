let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Rusted Key"
        , description =
            "Gain access to a Rusty Lockbox that contains a powerful item."
        , image = "items/rusted_key.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          ''
          A hidden cache containing an item (80%/20%) will appear in a random location on each stage.
          Opening the cache consumes this item.
          ''
      , unlocked_by = Some
          "Complete the **Keyed Up** challenge. Defeat a teleporter boss in under 15 seconds."
      , interactions =
        [ "Number of Rust Lockboxes on a level is determined by the number of players that have Rusted Keys."
        ]
      }
    : Schema.GameItem
