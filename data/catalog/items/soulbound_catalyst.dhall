let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Soulbound Catalyst"
        , description = "Kills reduce equipment cooldown."
        , image = "items/soulbound_catalyst.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          "Kills reduce equipment cooldown by 4s (+2s per stack)."
      , unlocked_by = Some
          "Complete the **Newtist** challenge. Discover and activate 8 unique Newt altars."
      , interactions = empty Text
      }
    : Schema.GameItem
