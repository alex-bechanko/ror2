let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Pluripotent Larva"
        , description =
            "Get a corrupted extra life. Consumed on use. Corrupts all Dio's Best Friends."
        , image = "items/pluripotent_larva.png"
        , background = Some "backgrounds/void.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Void
      , advanced_description =
          ''
          Upon death, this item will be consumed and you will return to life with
          3 seconds of invulnerability.
          All of your items that can be corrupted will be.
          Corrupts all Dio's Best Friends.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
