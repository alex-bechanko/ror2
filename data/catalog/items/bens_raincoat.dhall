let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Ben's Raincoat"
        , description =
            "Prevent debuffs, instead gaining a temporary barrier. Recharges over time."
        , image = "items/bens_raincoat.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Legendary
      , advanced_description =
          "Whenever you would receive a debuff, prevent it. Increases maximum health by 100 (+100 per stack)."
      , unlocked_by = None Text
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
