let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Defensive Microbots"
        , description =
            "Shoot down nearby projectiles. Recharge rate scales with attack speed."
        , image = "items/defensive_microbots.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          ''
          Shoot down 1 (+1 per stack) projectiles within 20m every 0.5 seconds.
          Recharge rate scales with attack speed.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
