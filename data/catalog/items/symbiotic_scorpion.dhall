let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Symbiotic Scorpion"
        , description = "Permanently reduce armor on hit."
        , image = "items/symbiotic_scorpion.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Legendary
      , advanced_description =
          "On hit reduce armor by 2 (+2 per stack) permanently."
      , unlocked_by = None Text
      , interactions =
        [ "Symbiotic Scorpion counts as a debuff for Death Mark" ]
      }
    : Schema.GameItem
