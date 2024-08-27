let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Old War Stealthsuit"
        , description = "Turn invisible at low health."
        , image = "items/old_war_stealthsuit.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          Falling below 25% health causes you to gain 40% movement speed and invisibility for 5s.
          Recharges every 30 seconds (-50% per stack)."
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
