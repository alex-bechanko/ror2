let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Shattering Justice"
        , description =
            "Reduce the armor of enemies after repeatedly striking them."
        , image = "items/shattering_justice.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          "After hitting an enemy 5 times, reduce their armor by 60 for 8 (+8 per stack) seconds."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
