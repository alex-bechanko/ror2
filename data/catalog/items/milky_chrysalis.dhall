let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

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
