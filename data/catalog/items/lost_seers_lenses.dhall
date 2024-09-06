let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Lost Seer's Lenses"
        , description =
            ''
            Gain a 0.5% chance to instantly kill a non-boss enemy.
            Corrupts all Lens-Maker's Glasses.
            ''
        , image = "items/lost_seers_lenses.png"
        , background = Some "backgrounds/void.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Void
      , advanced_description =
          ''
          Your attacks have a 0.5% (+0.5% per stack) chance to instantly kill a 
          non-Boss enemy.
          Corrupts all Lens-Maker's Glasses.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Brilliant Behemoth area of effect gets the same instant kill death effect of Lost Seer's Lenses"
        , "57 Leaf Clover greatly improves the chances to trigger Lost Seer's Lenses."
        , "Bandit and Railgunner still have their 'Critical Strike' effects for their moves."
        ]
      }
    : Schema.GameItem
