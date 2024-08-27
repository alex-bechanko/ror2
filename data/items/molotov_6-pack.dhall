let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Molotov (6-pack)"
        , description =
            "Throw 6 flaming molotovs that ignite enemies upon shattering."
        , image = "items/molotov_6-pack.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Equipment
      , advanced_description =
          ''
          Throw 6 molotov cocktails that ignites enemies for 500% base damage.
          Each molotov leaves a burning area for 200% damage per second.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Ignition Tank augments the Ignite effect on Molotov (6-pack)" ]
      }
    : Schema.GameItem
