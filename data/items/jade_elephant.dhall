let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Jade Elephant"
        , description = "Gain massive armor for 5 seconds."
        , image = "items/jade_elephant.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Equipment
      , advanced_description = "Gain 500 armor for 5 seconds."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
