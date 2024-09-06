let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in  { item =
      { name = "Plasma Shrimp"
      , description =
          "While you have shield, fire missiles on every hit. Corrupts all AtG Missile Mk. 1s."
      , image = "items/plasma_shrimp.png"
      , background = Some "backgrounds/void.png"
      }
    , dlc = Some Dlc.SurvivorsOfTheVoid
    , rarity = Rarity.Void
    , advanced_description =
        ''
        Gain a shield equal to 10% of your maximum health.
        While you have a shield, hitting an enemy fires a missile.
        The missile deals 40% (+40% per stack) TOTAL damage.
        Corrupts all AtG Missile Mk. 1s.
        ''
    , unlocked_by = None Text
    , interactions =
      [ "Pocket I.C.B.M. augments Plasma Shrimp greatly."
      , "57 Leaf Clover and one AtG Missile Mk. 1 is better than replacing it with a single Plasma Shrimp."
      , "Transcendence will make Plasma Shrimp always fire on a hit."
      ]
    }
