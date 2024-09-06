let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

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
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
