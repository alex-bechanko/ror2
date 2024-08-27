let empty = https://prelude.dhall-lang.org/List/empty

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
    , interactions = empty Text
    }
