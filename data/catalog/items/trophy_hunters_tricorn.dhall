let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Trophy Hunter's Tricorn"
        , description =
            "Execute a large monster and claim its trophy. Consumed on use."
        , image = "items/trophy_hunters_tricorn.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Equipment
      , advanced_description =
          ''
          Execute any enemy capable of spawning a unique reward, and it will drop that item.
          Equipment is consumed on use.
          ''
      , unlocked_by = None Text
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
