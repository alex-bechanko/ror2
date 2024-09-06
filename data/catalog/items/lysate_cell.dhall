let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Lysate Cell"
        , description =
            "Add an extra charge of your Special skill. Corrupts all Fuel Cells."
        , image = "items/lysate_cell.png"
        , background = Some "backgrounds/void.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Void
      , advanced_description =
          ''
          Add +1 (+1 per stack) charge of your Special skill.
          Reduces Special skill cooldown by 33%.
          Corrupts all Fuel Cells.
          ''
      , unlocked_by = None Text
      , interactions = [ "Allows Engineer to place 3 turrents." ]
      }
    : Schema.GameItem
