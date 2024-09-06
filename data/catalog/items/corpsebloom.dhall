let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Corpsebloom"
        , description = "Double your healing... BUT it's applied over time."
        , image = "items/corpsebloom.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          ''
          Heal +100% (+100% per stack) more.
          All healing is applied over time.
          Can heal for a maximum of 10% (-50% per stack) of your health per second.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
