let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in  { item =
      { name = "Voidsent Flame"
      , description =
          "Full health enemies also detonate on hit. Corrupts all Will-o'-the-wisps."
      , image = "items/voidsent_flame.png"
      , background = Some "backgrounds/void.png"
      }
    , dlc = Some Dlc.SurvivorsOfTheVoid
    , rarity = Rarity.Void
    , advanced_description =
        ''
        Upon hitting an enemy at full health, spawn a lava pillar in a 12m (+2.4m per stack) radius.
        Lava pillar does for 260% (+156% per stack) base damage. 
        Corrupts all Will-o'-the-wisps.
        ''
    , unlocked_by = None Text
    , interactions =
      [ ''
        Helfire Tincture can trigger Voidsent Flame on yourself when you are full health.
        The Voidsent Flame will not damage you.
        ''
      ]
    }
