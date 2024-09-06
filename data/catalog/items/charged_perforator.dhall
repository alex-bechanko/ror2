let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

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
    , interactions = empty Text
    }
