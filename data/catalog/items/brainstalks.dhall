let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Brainstalks"
        , description =
            "Skills have NO cooldowns for a short period after killing an elite."
        , image = "items/brainstalks.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          "Upon killing an elite monster, enter a frenzy for 4s (+4s per stack) where skills have 0.5s cooldowns."
      , unlocked_by = Some
          "Complete the **Deicide** challenge. Kill an Elite boss on Monsoon difficulty."
      , interactions = empty Text
      }
    : Schema.GameItem
