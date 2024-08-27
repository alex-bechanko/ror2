let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Encrusted Key"
        , description =
            "Gain access to an Encrusted Cache that contains a void item. Corrupts all Rusted Keys."
        , image = "items/encrusted_key.png"
        , background = Some "backgrounds/void.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Void
      , advanced_description =
          ''
          A hidden cache containing an item (60%/30%/10%) will appear in a random
          location on each stage.
          Opening the cache consumes this item.
          Corrupts all Rusted Keys.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "There is no reason to carry more Encrusted Keys than levels left to complete."
        ]
      }
    : Schema.GameItem
