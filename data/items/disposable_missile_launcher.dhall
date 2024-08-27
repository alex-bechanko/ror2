let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Disposable Missile Launcher"
        , description = "Fire a swarm of missiles."
        , image = "items/disposable_missile_launcher.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Equipment
      , advanced_description =
          "Fire a swarm of 12 missiles that deal 12x300% damage."
      , unlocked_by = None Text
      , interactions =
        [ "Pocket I.C.B.M. augments Disposable Missile Launcher greatly." ]
      }
    : Schema.GameItem
