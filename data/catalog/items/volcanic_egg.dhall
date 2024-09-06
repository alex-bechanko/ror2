let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

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
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
