let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Polylute"
        , description =
            "Chance to repeatedly strike a single enemy with lightning. Corrupts all Ukuleles."
        , image = "items/polylute.png"
        , background = Some "backgrounds/void.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Void
      , advanced_description =
          ''
          25% chance to fire lightning for 60% TOTAL damage up to 3 (+3 per stack) times.
          Corrupts all Ukuleles.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
