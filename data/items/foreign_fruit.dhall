let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Foreign Fruit"
        , description = "Heal on use."
        , image = "items/foreign_fruit.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Equipment
      , advanced_description = "Instantly heal for 50% of your maximum health."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
