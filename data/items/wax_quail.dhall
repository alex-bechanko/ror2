let empty = https://prelude.dhall-lang.org/List/empty

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
      , interactions = empty Text
      }
    : Schema.GameItem
