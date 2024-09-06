let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in  { item =
      { name = "Milky Chrysalis"
      , description = "Gain temporary flight."
      , image = "items/milky_chrysalis.png"
      , background = Some "backgrounds/equipment.png"
      }
    , dlc = None Dlc
    , rarity = Rarity.Equipment
    , advanced_description =
        "Sprout wings and fly for 15 seconds. Gain +20% movement speed for the duration."
    , unlocked_by = None Text
    , interactions = Prelude.List.empty Text
    }
