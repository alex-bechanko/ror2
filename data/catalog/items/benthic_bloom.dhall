let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Benthic Bloom"
        , description =
            "Upgrades your items at the start of each stage. Corrupts all 57 Leaf Clovers."
        , image = "items/benthic_bloom.png"
        , background = Some "backgrounds/void.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Void
      , advanced_description =
          ''
          Upgrades 3 (+3 per stack) random items to items of the next higher Rarity
          at the start of each stage.
          Corrupts all 57 Leaf Clovers.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Legendary, Boss, Lunar and Void items cannot be transformed"
        , "Items can transform into 57 Leaf Clover, thus causing Benthic Bloom to increase."
        ]
      }
    : Schema.GameItem
