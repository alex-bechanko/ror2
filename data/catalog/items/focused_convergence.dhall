let empty = https://prelude.dhall-lang.org/List/empty

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
