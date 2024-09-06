let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Irradiant Pearl"
        , description = "Increase ALL of your stats."
        , image = "items/irradiant_pearl.png"
        , background = Some "backgrounds/boss.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Boss
      , advanced_description = "Increases ALL stats by 10% (+10% per stack)."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
