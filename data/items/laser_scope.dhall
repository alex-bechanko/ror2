let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Laser Scope"
        , description =
            "Your 'Critical Strikes' deal an additional 100% damage."
        , image = "items/laser_scope.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Legendary
      , advanced_description =
          "Critical Strikes deal an additional 100% damage (+100% per stack)."
      , unlocked_by = None Text
      , interactions =
        [ ''
          For Railgunner's 'Critical Strike' damage, 1 Laser Scope = 10 Lens-Maker's Glasses.
          ''
        ]
      }
    : Schema.GameItem
