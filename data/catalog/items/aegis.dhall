let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Aegis"
        , description = "Healing past full grants you a temporary barrier."
        , image = "items/aegis.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          "Healing past full grants you a temporary barrier for 50% (+50% per stack) of the amount you healed."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
