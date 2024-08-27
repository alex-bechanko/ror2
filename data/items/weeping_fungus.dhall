let empty = https://prelude.dhall-lang.org/List/empty

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
