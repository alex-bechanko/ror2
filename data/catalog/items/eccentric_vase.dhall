let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in  { item =
      { name = "Eccentric Vase"
      , description = "Create a quantum tunnel between two locations."
      , image = "items/eccentric_vase.png"
      , background = Some "backgrounds/equipment.png"
      }
    , dlc = None Dlc
    , rarity = Rarity.Equipment
    , advanced_description =
        "Create a quantum tunnel of up to 1000m in length. Lasts 30 seconds."
    , unlocked_by = Some
        ''
        Complete the **Blackout** challenge.
        Defeat the unique guardian of Gilded Coast without any beacons deactivating.
        ''
    , interactions =
      [ ''
        Eccentric Vase can be used to skip directly to the Mithrix fight on 
        Commencement, bypassing the pillars objective.
        ''
      ]
    }
