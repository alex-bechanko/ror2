let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Volcanic Egg"
        , description =
            ''
            Transform into a speeding draconic fireball, dealing damage as you
            pass through enemies.
            ''
        , image = "items/volcanic_egg.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Equipment
      , advanced_description =
          ''
          Turn into a draconic fireball for 5 seconds.
          Deal 500% damage on impact.
          Detonates at the end for 800% damage.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
