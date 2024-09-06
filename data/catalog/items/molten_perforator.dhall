let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Molten Perforator"
        , description = "Chance on hit to fire magma balls."
        , image = "items/molten_perforator.png"
        , background = Some "backgrounds/boss.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Boss
      , advanced_description =
          "10% chance on hit to call forth 3 magma balls from an enemy, dealing 300% (+300% per stack) damage each."
      , unlocked_by = None Text
      , interactions =
        [ "Ignition Tank increases damage of the magma balls from Molten Perforator."
        ]
      }
    : Schema.GameItem
