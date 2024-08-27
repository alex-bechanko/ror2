let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Alien Head"
        , description = "Reduces cooldowns for your skills."
        , image = "items/alien_head.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          ''
          Reduce skill cooldowns by according to the following formula:
          ```
          f(c, x) = c * 0.75 ^ x
          ```
          Where `c` is the equipment cooldown, and `x` is the number of Alien Head stacks.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
