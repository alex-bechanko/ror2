let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Gorag's Opus"
        , description = "You and all your allies enter a frenzy."
        , image = "items/gorags_opus.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Equipment
      , advanced_description =
          ''
          All allies enter a frenzy for 7 seconds.
          Increases movement speed by 50% and attack speed by 100%.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
