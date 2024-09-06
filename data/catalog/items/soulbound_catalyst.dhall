let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

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
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
