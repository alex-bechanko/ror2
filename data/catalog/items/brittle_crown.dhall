let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Brittle Crown"
        , description = "Gain gold on hit... BUT surrender gold on getting hit."
        , image = "items/brittle_crown.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          ''
          30% chance on hit to gain 2 (+2 per stack) gold.
          Scales over time. 
          Lose gold on taking damage equal to 100% (+100% per stack) of the maximum
          health percentage you lost.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "The Crowdfunder gains enough gold with Brittle Crown to self-sustain its fire."
        ]
      }
    : Schema.GameItem
