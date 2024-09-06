let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Halcyon Seed"
        , description = "Summon Aurelionite during the Teleporter event."
        , image = "items/halcyon_seed.png"
        , background = Some "backgrounds/boss.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Boss
      , advanced_description =
          ''
          Summon Aurelionite during the teleporter event.
          It has 100% (+50% per stack) damage and 100% (+100% per stack) health.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
