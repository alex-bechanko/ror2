let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in  { item =
      { name = "Charged Perforator"
      , description = "Chance on hit to call down a lightning strike."
      , image = "items/charged_perforator.png"
      , background = Some "backgrounds/boss.png"
      }
    , dlc = None Dlc
    , rarity = Rarity.Boss
    , advanced_description =
        "10% chance on hit to down a lightning strike, dealing 500% (+500% per stack) damage."
    , unlocked_by = None Text
    , interactions = Prelude.List.empty Text
    }
