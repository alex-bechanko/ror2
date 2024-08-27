let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Tougher Times"
        , description = "Chance to block incoming damage."
        , image = "items/tougher_times.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          ''
            Chance to block incoming damage stacks hyperbolically, following the equation:
            ```
            f(x) = 1 - 1 / (1 + 0.15 * x)
            ```
            Where `x` is the number of items.

            With 10 Tougher Times, the chance to be hit with damage is ~60%.
            Tougher Times is unaffected by luck.
          ''
      , unlocked_by = Some
          "Complete the **Learning Process** challenge. Die 5 times."
      , interactions = empty Text
      }
    : Schema.GameItem
