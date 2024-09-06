let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Needletick"
        , description =
            "Chance to collapse enemies on hit. Corrupts all Tri-Tip Daggers."
        , image = "items/needletick.png"
        , background = Some "backgrounds/void.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Void
      , advanced_description =
          ''
          10% (+10% per stack) chance to collapse an enemy for 400% base damage.
          Corrupts all Tri-Tip Daggers.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Shatterspleen still triggers Bleed, allowing a survivor to do both Collapse and Bleed."
        , "Performs well with survivors that have a lower hit rate."
        , "Many stacks of Bleed performs better than many stacks of Needletick."
        ]
      }
    : Schema.GameItem
