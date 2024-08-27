let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Tri-Tip Dagger"
        , description = "Gain +10% chance to bleed enemies on hit."
        , image = "items/tri-tip_dagger.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          "10% (+10% per stack) chance to bleed an enemy for 240% base damage"
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
