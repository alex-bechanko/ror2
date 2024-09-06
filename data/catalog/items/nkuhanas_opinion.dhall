let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "N'kuhana's Opinion"
        , description = "Fire haunting skulls when healed."
        , image = "items/nkuhanas_opinion.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          ''
          Store 100% (+100% per stack) of healing as Soul Energy.
          After your Soul Energy reaches 10% of your maximum health,
          fire a skull that deals 250% of your Soul Energy as damage.
          ''
      , unlocked_by = Some
          "Complete the **Her Concepts** challenge. Find the altar to N'Kuhana."
      , interactions = empty Text
      }
    : Schema.GameItem
