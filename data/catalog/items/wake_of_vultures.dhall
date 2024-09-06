let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

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
