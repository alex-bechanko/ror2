let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Recycler"
        , description =
            "Transform an Item or Equipment into a different one. Can only recycle once."
        , image = "items/recycler.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Equipment
      , advanced_description =
          "Transform an Item or Equipment into a different one. Can only be converted into the same tier one time."
      , unlocked_by = Some
          "Complete the **Cleanup Duty** challenge. Destroy 20 rocks in Sky Meadow."
      , interactions = empty Text
      }
    : Schema.GameItem
