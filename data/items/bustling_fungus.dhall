let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Bustling Fungus"
        , description =
            "Heal all nearby allies after standing still for 1 second."
        , image = "items/bustling_fungus.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          ''
          Standing still for 1 second creates a 3.5m (+1.5m per stack) healing zone.
          That zone heals for 4.5% (+2.25% per stack) of your health every second to all allies.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "The Engineer turrets that do not move constantly trigger Bustling Fungus."
        , "Overhealing with Bustling Fungus triggers N'Kuhana's Opinion."
        ]
      }
    : Schema.GameItem
