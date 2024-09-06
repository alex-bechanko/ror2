let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Eulogy Zero"
        , description =
            "Items and equipment have a small chance to transform into a Lunar item instead."
        , image = "items/eulogy_zero.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          "Items have a 5% (+5% per stack) chance to become a Lunar item instead."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
