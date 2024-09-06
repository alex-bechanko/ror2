let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

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
