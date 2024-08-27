let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Tentabauble"
        , description =
            "Chance to root enemies on hit. Corrupts all Chronobaubles."
        , image = "items/tentabauble.png"
        , background = Some "backgrounds/void.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Void
      , advanced_description =
          ''
          5% (+5% per stack) chance on hit to root enemies for 1s (+1s per stack).
          Corrupts all Chronobaubles.
          ''
      , unlocked_by = None Text
      , interactions = [ "Tentabauble counts as a debuff for Death Mark." ]
      }
    : Schema.GameItem
