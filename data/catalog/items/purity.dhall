let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Purity"
        , description =
            "Reduce your skill cooldowns by 2 seconds. You are unlucky."
        , image = "items/purity.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          ''
          All skill cooldowns are reduced by 2 (+1 per stack) seconds.
          All random effects are rolled +1 (+1 per stack) times for an unfavorable outcome.
          ''
      , unlocked_by = Some
          "Complete the **The Calm** challenge. Beat the game on Monsoon difficulty"
      , interactions =
        [ "57 Leaf Clover and Purity cancel each other out."
        , ''
          Items that can reach 100% chance to trigger will be unaffected by Purity.
          Those items are:
          - Lens-Maker's Glasses
          - Sticky Bomb
          - Tri-Tip Dagger
          - Ghor's Tome
          ''
        ]
      }
    : Schema.GameItem
