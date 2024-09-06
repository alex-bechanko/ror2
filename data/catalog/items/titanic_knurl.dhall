let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Titanic Knurl"
        , description = "Boosts health and regeneration."
        , image = "items/titanic_knurl.png"
        , background = Some "backgrounds/boss.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Boss
      , advanced_description =
          ''
          Increase maximum health by 40 (+40 per stack) and base health regeneration
          by +1.6 hp/s (+1.6 hp/s per stack).
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
