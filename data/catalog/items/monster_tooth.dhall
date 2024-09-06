let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Monster Tooth"
        , description = "Drop a healing orb on kill."
        , image = "items/monster_tooth.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          ''
          Killing an enemy spawns a healing orb.
          The orb heals for 8 plus an additional 2% (+2% per stack) of maximum health.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Forgive Me Please triggers Monster Tooth."
        , "Rejuvenation Rack doubles the effectiveness of Monster Tooth"
        ]
      }
    : Schema.GameItem
