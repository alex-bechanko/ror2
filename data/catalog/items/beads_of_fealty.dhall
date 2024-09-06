let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in  { item =
      { name = "Beads of Fealty"
      , description = "Seems to do nothing... but..."
      , image = "items/beads_of_fealty.png"
      , background = Some "backgrounds/lunar.png"
      }
    , dlc = None Dlc
    , rarity = Rarity.Lunar
    , advanced_description =
        ''
        Used on the obliteration Obelisk to enter the A Moment, Whole
        stage from the A Moment, Fractured.
        ''
    , unlocked_by = None Text
    , interactions = empty Text
    }
