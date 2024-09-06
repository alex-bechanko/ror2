let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Fuel Cell"
        , description =
            "Hold an additional equipment charge. Reduce equipment cooldown."
        , image = "items/fuel_cell.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          Hold an additional equipment charge (+1 per stack). 
          Equipment cooldown reduction stacks according to the equation: 
          ```
          f(c,x) = c * (1 - 0.15) ^ x
          ```
          Where `c` is the initial cooldown of the equipment, and `x` is the number of stacks of Fuel Cell.

          With 5 Fuel Cells, the chance to be hit with damage is ~50%.
          ''
      , unlocked_by = Some
          "Complete the **Experimenting** challenge. Pick up 5 different types of Equipment"
      , interactions =
        [ ''
          Gestures of the Drowned combine with Fuel Cells for cooldown reduction.
          Taking the cooldown reduction equattion, the cooldown becomes `0.5 * f(c, x + y)`.
          Where `x` is Fuel Cell stacks and `y` is Gestures of the Drowned stacks.
          ''
        ]
      }
    : Schema.GameItem
