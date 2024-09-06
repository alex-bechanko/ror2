let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Red Whip"
        , description = "Move fast out of combat."
        , image = "items/red_whip.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          "Leaving combat boosts your movement speed by 30% (+30% per stack)."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
