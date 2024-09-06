let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Pearl"
        , description = "Increase your maximum health."
        , image = "items/pearl.png"
        , background = Some "backgrounds/boss.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Boss
      , advanced_description =
          "Increases maximum health by 10% (+10% per stack)."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
