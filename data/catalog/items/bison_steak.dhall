let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Bison Steak"
        , description = "Gain 25 max health"
        , image = "items/bison_steak.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description = "Increases maximum health by 25 (+25 per stack)."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
