let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Safer Spaces"
        , description =
            "Block the next source of damage. Corrupts all Tougher Times."
        , image = "items/safer_spaces.png"
        , background = Some "backgrounds/void.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Void
      , advanced_description =
          ''
          Blocks incoming damage once.
          Recharges after 15 seconds (-10% per stack).
          Corrupts all Tougher Times.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Blast Shower resets Safer Spaces cooldown."
        , "Safer Spaces is a good way to mitigate fall damage."
        ]
      }
    : Schema.GameItem
