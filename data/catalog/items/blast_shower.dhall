let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Blast Shower"
        , description = "Cleanse all negative effects."
        , image = "items/blast_shower.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Equipment
      , advanced_description =
          "Cleanse all negative effects. Includes debuffs, damage over time, and nearby projectiles."
      , unlocked_by = Some
          "Complete the **Warm For Life** challenge. Die three times while burning."
      , interactions =
        [ "Kjaro's Band, Runald's Band and Singularity Band cooldown can be reset with Blast Shower."
        ]
      }
    : Schema.GameItem
