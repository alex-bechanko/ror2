let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Stone Flux Pauldron"
        , description = "Double your health... BUT halve your speed."
        , image = "items/stone_flux_pauldron.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          "Increase max health by 100% (+100% per stack). Reduce movement speed by 50% (+50% per stack)."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
