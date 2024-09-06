let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Backup Magazine"
        , description = "Add an extra charge of your Secondary skill."
        , image = "items/backup_magazine.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          "Add +1 (+1 per stack) charge of your Secondary skill."
      , unlocked_by = Some
          ''
          Complete the **Flawless** challenge. Fully charge a Teleporter without getting hit
          ''
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
