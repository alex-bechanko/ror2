let empty = https://prelude.dhall-lang.org/List/empty

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
