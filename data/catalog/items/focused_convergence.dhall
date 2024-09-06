let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

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
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
