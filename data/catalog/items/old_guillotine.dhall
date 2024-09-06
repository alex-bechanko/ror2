let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Old Guillotine"
        , description = "Instantly kill low health Elite monsters."
        , image = "items/old_guillotine.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          The instant kill threshold for Old Guillotine stacks hyperbolically, following the equation:
          ```
          f(x) = 1 - 1 / (1 + 0.13x)

          ```
          Where `x` is the number of stacks of Old Guillotine.

          With 8 Old Guillotines, the threshold becomes ~50%.    
          ''
      , unlocked_by = Some
          "Complete the **Cutdown** challenge. Defeat 500 Elite monsters."
      , interactions =
        [ "Enemies with shields still cannot trigger the Old Guillotine effect."
        , "Old Guillotine enables Acrid to kill Elite monsters with Poison by itself."
        ]
      }
    : Schema.GameItem
