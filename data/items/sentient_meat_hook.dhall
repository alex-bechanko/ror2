let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Sentient Meat Hook"
        , description = "Chance to hook all nearby enemies."
        , image = "items/sentient_meat_hook.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          ''
          Chance on hit to fire homing hooks at based on the hyperbolic formula:
          ```
          f(x) = 1 - 1 / (1 + 0.2 * x)
          ```
          Where `x` is the number of Sentient Meat Hook stacks.

          Homing hooks fire at up to 10 (+5 per stack) enemies for 100% TOTAL damage.

          5 Sentient Meat Hooks allow for ~50% chance to hit.
          ''
      , unlocked_by = Some
          "Complete the **Deja Vu?** challenge. Loop back to the first stage."
      , interactions =
        [ "57 Leaf Clover affects Sentient Meat Hook's chances to hit." ]
      }
    : Schema.GameItem
