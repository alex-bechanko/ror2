let empty = https://prelude.dhall-lang.org/List/empty

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
      , interactions = empty Text
      }
    : Schema.GameItem
