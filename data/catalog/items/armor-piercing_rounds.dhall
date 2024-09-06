let empty = https://prelude.dhall-lang.org/List/empty

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
      , interactions = empty Text
      }
    : Schema.GameItem
