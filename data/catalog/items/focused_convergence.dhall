let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Focused Convergence"
        , description =
            "Increase the speed of Teleporter charging... BUT reduce the size of the zone."
        , image = "items/focused_convergence.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          ''
          Teleporters charge 30% (+30% per stack) faster, but the size of the 
          Teleporter zone is 50% (-50% per stack) smaller.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
