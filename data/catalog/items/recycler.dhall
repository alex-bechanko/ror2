let empty = https://prelude.dhall-lang.org/List/empty

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
