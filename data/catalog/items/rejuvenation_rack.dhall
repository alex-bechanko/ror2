let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Rejuvenation Rack"
        , description = "Double the strength of healing."
        , image = "items/rejuvenation_rack.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description = "Heal +100% (+100% per stack) more."
      , unlocked_by = Some
          ''
          Complete the **Naturopath** challenge.
          Without healing, reach and complete the 3rd teleporter event.
          ''
      , interactions = empty Text
      }
    : Schema.GameItem
