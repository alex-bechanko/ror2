let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

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
