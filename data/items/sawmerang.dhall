let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Sawmerang"
        , description = "Throw a fan of buzzing saws that come back to you."
        , image = "items/sawmerang.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Equipment
      , advanced_description =
          ''
          Throw three large saw blades that slice through enemies for 3x400% damage.
          Also deals an additional 3x100% damage per second while bleeding enemies.
          Can strike enemies again on the way back.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
