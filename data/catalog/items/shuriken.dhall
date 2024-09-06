let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Shuriken"
        , description =
            "Activating your Primary skill also throws a shuriken. Recharges over time."
        , image = "items/shuriken.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          Activating your Primary skill also throws a shuriken that deals 400% (+100% per stack) base damage.
          You can hold up to 3 (+1 per stack) shurikens which all reload over 10 seconds.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Shuriken are a useful ranged option for melee survivors like Loader and Mercenary."
        , "A single Shuriken is enough to trigger Kjaro's Band and Runald's Band."
        ]
      }
    : Schema.GameItem
