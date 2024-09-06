let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Gasoline"
        , description = "Killing an enemy ignites other nearby enemies."
        , image = "items/gasoline.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          ''
          Killing an enemy ignites all enemies within 12m (+4m per stack) for 150% base damage.
          Additionally, enemies burn for 150% (+75% per stack) base damage.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Ignition Tank augments Gasoline."
        , "Forgive Me Please triggers Gasoline."
        , "Gasoline counts as a debuff for Death Mark."
        ]
      }
    : Schema.GameItem
