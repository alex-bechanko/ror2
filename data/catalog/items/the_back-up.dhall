let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in  { item =
      { name = "The Back-up"
      , description = "Call drones for back up. Lasts 25 seconds."
      , image = "items/the_back-up.png"
      , background = Some "backgrounds/equipment.png"
      }
    , dlc = None Dlc
    , rarity = Rarity.Equipment
    , advanced_description =
        "Call 4 Strike Drones to fight for you. Lasts 25 seconds."
    , unlocked_by = Some
        "Complete the **Mechanic** challenge. Repair 30 drones or turrets."
    , interactions =
      [ "The Captain's passive skill also gives the Strike Drones Microbots." ]
    }
