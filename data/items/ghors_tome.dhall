let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Ghor's Tome"
        , description = "Chance on kill to drop a treasure."
        , image = "items/ghors_tome.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          "4% (+4% on stack) chance on kill to drop a treasure worth \$25. Scales over time."
      , unlocked_by = None Text
      , interactions =
        [ "Forgive Me Please triggers Ghor's Tome."
        , "For 100% chance to drop a treasure, 25 stacks of Ghor's Tome is needed."
        , "57 Leaf Clover effectively doubles the chance that Ghor's Tome triggers."
        , "Ghor's Tome is less significant if the Artifact of Sacrifice is activated."
        ]
      }
    : Schema.GameItem
