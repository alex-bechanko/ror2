let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Brainstalks"
        , description =
            "Skills have NO cooldowns for a short period after killing an elite."
        , image = "items/brainstalks.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          "Upon killing an elite monster, enter a frenzy for 4s (+4s per stack) where skills have 0.5s cooldowns."
      , unlocked_by = Some
          "Complete the **Deicide** challenge. Kill an Elite boss on Monsoon difficulty."
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
