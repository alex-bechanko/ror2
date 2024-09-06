let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

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
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
