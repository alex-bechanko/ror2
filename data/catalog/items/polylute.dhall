let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

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
