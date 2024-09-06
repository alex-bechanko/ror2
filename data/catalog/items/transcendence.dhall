let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Transcendence"
        , description =
            "Convert all your health into shield. Increase maximum health."
        , image = "items/transcendence.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          "Convert all but 1 health into regenerating shields. Gain 50% (+25% per stack) maximum health."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
