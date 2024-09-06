let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Trophy Hunter's Tricorn (Consumed)"
        , description = "Looks kinda cool, but that's about it."
        , image = "items/trophy_hunters_tricorn_consumed.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Equipment
      , advanced_description = "Emits \"Ahoy!\" when activated."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
