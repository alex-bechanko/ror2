let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Weeping Fungus"
        , description = "Heal while sprinting. Corrupts all Bustling Fungi."
        , image = "items/weeping_fungus.png"
        , background = Some "backgrounds/void.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Void
      , advanced_description =
          "Heals for 2% (+2% per stack) of your health every second while sprinting. Corrupts all Bustling Fungi."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
