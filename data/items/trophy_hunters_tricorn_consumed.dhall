let empty = https://prelude.dhall-lang.org/List/empty

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
