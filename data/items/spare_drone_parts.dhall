let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Spare Drone Parts"
        , description =
            "Your drones fire faster, have less cooldowns, shoot missiles, and gain a bonus chaingun."
        , image = "items/spare_drone_parts.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Legendary
      , advanced_description =
          "Gain Col. Droneman. Drones gain +50% (+50% per stack) attack speed and cooldown reduction. Drones gain 10% chance to fire a missile on hit, dealing 300% TOTAL damage. Drones gain an automatic chain gun that deals 6x100% damage, bouncing to 2 enemies."
      , unlocked_by = None Text
      , interactions =
        [ "The Back-up is augmented by Spare Drone Parts"
        , "Engineer's turrents are augmented by Spare Drone Parts"
        , "Empathy Cores is augmented by Spare Drone Parts"
        ]
      }
    : Schema.GameItem
