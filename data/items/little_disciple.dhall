let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Little Disciple"
        , description = "Fire tracking wisps while sprinting."
        , image = "items/little_disciple.png"
        , background = Some "backgrounds/boss.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Boss
      , advanced_description =
          ''
          Fire a tracking wisp for 300% (+300% per stack) damage.
          Fires every 1.6 seconds while sprinting.
          Fire rate increases with movement speed.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
