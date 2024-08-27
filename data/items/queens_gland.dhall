let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Queen's Gland"
        , description = "Recruit a Beetle Guard."
        , image = "items/queens_gland.png"
        , background = Some "backgrounds/boss.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Boss
      , advanced_description =
          ''
          Every 30 seconds, summon a Beetle Guard with bonus 300% damage and 100% health.
          Can have up to 1 (+1 per stack) Guards at a time.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
