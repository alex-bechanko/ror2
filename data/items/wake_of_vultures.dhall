let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Wake of Vultures"
        , description = "Temporarily steal the power of slain elites."
        , image = "items/wake_of_vultures.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          "Gain the power of any killed elite monster for 8s (+5s per stack)."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
