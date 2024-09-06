let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Chronobauble"
        , description = "Slow enemies on hit."
        , image = "items/chronobauble.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          "Slow enemies on hit for -60% movement speed for 2s (+2s per stack)."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
