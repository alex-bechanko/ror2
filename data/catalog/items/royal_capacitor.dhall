let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in  { item =
      { name = "Royal Capacitor"
      , description = "Call down a lightning strike on a targeted monster."
      , image = "items/royal_capacitor.png"
      , background = Some "backgrounds/equipment.png"
      }
    , dlc = None Dlc
    , rarity = Rarity.Equipment
    , advanced_description =
        "Call down a lightning strike on a targeted monster, dealing 3000% damage and stunning nearby monsters. "
    , unlocked_by = Some
        ''
        Complete the **Ascendant** challenge.
        Defeat the Teleporter bosses after activating 2 Shrines of the Mountain.
        ''
    , interactions =
      [ "Kjaro's Band, Runald's Band, and Singularity Band are triggered by Royal Capacitor damage"
      ]
    }
