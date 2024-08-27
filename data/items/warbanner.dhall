let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Warbanner"
        , description =
            ''
            Drop a Warbanner on level up or starting the Teleporter event.
            Grants allies attack and movement speed.
            ''
        , image = "items/warbanner.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          ''
          On level up or starting the Teleporter event, create a 16m (+8m per stack) zone.
          The zone raises attack and movement speed by 30% for any ally within it.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
