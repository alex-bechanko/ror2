let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Radar Scanner"
        , description = "Reveal all nearby interactables."
        , image = "items/radar_scanner.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Equipment
      , advanced_description =
          "Reveal all interactables within 500m for 10 seconds."
      , unlocked_by = Some
          "Complete the **Bookworm** challenge. Collect 10 Monster or Environment Logs"
      , interactions = empty Text
      }
    : Schema.GameItem
