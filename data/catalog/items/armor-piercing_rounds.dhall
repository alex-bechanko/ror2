let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Armor-Piercing Rounds"
        , description = "Deal extra damage to bosses"
        , image = "items/armor-piercing_rounds.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          "Deal an additional 20% damage (+20% per stack) bosses."
      , unlocked_by = Some
          "Complete the **Advancement** challenge. Complete a teleporter event."
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
