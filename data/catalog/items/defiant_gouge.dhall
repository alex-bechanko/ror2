let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in  { item =
      { name = "Defiant Gouge"
      , description = "Using a Shrine summons enemies nearby. "
      , image = "items/defiant_gouge.png"
      , background = Some "backgrounds/lunar.png"
      }
    , dlc = None Dlc
    , rarity = Rarity.Lunar
    , advanced_description =
        "Using a Shrine summons enemies (stronger per stack) nearby. Scales over time."
    , unlocked_by = None Text
    , interactions = empty Text
    }
