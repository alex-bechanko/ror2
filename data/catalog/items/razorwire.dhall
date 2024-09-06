let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Razorwire"
        , description = "Retaliate in a burst of razors on taking damage."
        , image = "items/razorwire.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          Getting hit causes you to explode in a burst of razors, dealing 160% damage.
          Hits up to 5 (+2 per stack) targets in a 25m (+10m per stack) radius.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Void Fields trigger Razorwire"
        , "Void Seeds trigger Razorwire"
        , "Helfire Tincture trigger Razorwire"
        , "Damage blocked by Safer Spaces and Tougher Times does not trigger Razorwire"
        ]
      }
    : Schema.GameItem
