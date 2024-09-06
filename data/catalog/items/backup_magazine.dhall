let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

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
      , interactions = empty Text
      }
    : Schema.GameItem
