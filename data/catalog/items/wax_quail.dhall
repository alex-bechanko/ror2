let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Wax Quail"
        , description = "Jumping while sprinting boosts you forward."
        , image = "items/wax_quail.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          "Jumping while sprinting boosts you forward by 10m (+10m per stack)."
      , unlocked_by = Some
          ''
          Complete the **Going Fast Recommended** challenge.
          Reach 300% move speed (includes sprinting).
          ''
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
