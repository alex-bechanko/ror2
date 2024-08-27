let empty = https://prelude.dhall-lang.org/List/empty

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
      , interactions = empty Text
      }
    : Schema.GameItem
