let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Repulsion Armor Plate"
        , description = "Receive flat damage reduction from all attacks"
        , image = "items/repulsion_armor_plate.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          "Reduce all incoming damage by 5 (+5 per stack). Cannot be reduced below 1."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
