let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

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
