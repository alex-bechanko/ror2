let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Pocket I.C.B.M."
        , description =
            "All Missile items deal more damage and fire an additional two missiles."
        , image = "items/pocket_icbm.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Legendary
      , advanced_description =
          ''
          All missile items and equipment fire an additional 2 missiles.
          Increase missile damage by 0% (+50% per stack)
          ''
      , unlocked_by = None Text
      , interactions =
        [ ''
          Items affected by Pocket I.C.B.M.:
          - Bundle of Fireworks
          - AtG Missile Mk. 1
          - Plasma Shrimp
          - Disposable Rocket Launcher
          ''
        , "Engineer's Thermal Harpoons are augmented by Pocket I.C.B.M."
        ]
      }
    : Schema.GameItem
