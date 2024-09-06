let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Crowbar"
        , description = "Deal bonus damage to enemies above 90% health"
        , image = "items/crowbar.png"
        , background = Some "backgrounds/common.png"
        }
      , rarity = Rarity.Common
      , dlc = None Dlc
      , advanced_description =
          ''
          Deal +75% (+75% per stack) damage to enemies above 90% health.
          Two stacks of Crowbars is higher damage than a 'Critical Strike'
          ''
      , unlocked_by = Some
          "Complete the **The Basics** challenge. Discover 10 unique common level items"
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
