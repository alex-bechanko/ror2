let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

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
