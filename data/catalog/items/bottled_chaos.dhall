let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Bottled Chaos"
        , description =
            "Activating your Equipment triggers an additional, random Equipment effect."
        , image = "items/bottled_chaos.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          "Trigger a random equipment effect 1 (+1 per stack) time(s)."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem