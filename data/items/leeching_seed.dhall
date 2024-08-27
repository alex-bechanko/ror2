let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Leeching Seed"
        , description = "Dealing damage heals you."
        , image = "items/leeching_seed.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          "Dealing damage heals you for 1 (+1 per stack) health."
      , unlocked_by = None Text
      , interactions =
        [ "Works ok with burst type weapons on survivors like Bandit or Captain"
        ]
      }
    : Schema.GameItem
