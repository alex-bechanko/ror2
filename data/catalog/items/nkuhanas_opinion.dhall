let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "N'kuhana's Opinion"
        , description = "Fire haunting skulls when healed."
        , image = "items/nkuhanas_opinion.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          ''
          Store 100% (+100% per stack) of healing as Soul Energy.
          After your Soul Energy reaches 10% of your maximum health,
          fire a skull that deals 250% of your Soul Energy as damage.
          ''
      , unlocked_by = Some
          "Complete the **Her Concepts** challenge. Find the altar to N'Kuhana."
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
