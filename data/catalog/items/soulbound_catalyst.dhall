let empty = https://prelude.dhall-lang.org/List/empty

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
