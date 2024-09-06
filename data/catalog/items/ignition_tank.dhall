let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Ignition Tank"
        , description = "Your ignite effects deal quadruple damage."
        , image = "items/ignition_tank.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Uncommon
      , advanced_description =
          "Ignite effects deal +300% (+300% per stack) more damage over time."
      , unlocked_by = None Text
      , interactions =
        [ "Artificer's Flame bolt and Flamethrower are augmented by Ignition Tank."
        , "Gasoline is augmented by Ignition Tank."
        , "Molten Perforator is augmented by Ignition Tank."
        , "Helfire Tincture is augmented by Ignition Tank."
        ]
      }
    : Schema.GameItem
