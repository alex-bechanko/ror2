let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Kjaro's Band"
        , description =
            "High damage hits also blasts enemies with a runic flame tornado. Recharges over time."
        , image = "items/kjaros_band.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          Hits that deal more than 400% damage also blasts enemies with a runic flame tornado.
          The tornado deals 300% (+300% per stack) TOTAL damage over time.
          Recharges every 10 seconds.
          ''
      , unlocked_by = Some
          ''
          Complete the **Death Do Us Part** challenge.
          Discover the hidden chamber in the Abandoned Aquaduct.
          ''
      , interactions = empty Text
      }
    : Schema.GameItem
