let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Gnarled Woodsprite"
        , description = "Heal over time. Activate to send to an ally."
        , image = "items/gnarled_woodsprite.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Equipment
      , advanced_description =
          ''
          Gain a Woodsprite follower that heals for 1.5% of your maximum health/second.
          Can be sent to an ally to heal them for 10% of their maximum health.
          ''
      , unlocked_by = Some
          "Complete the **One with the Woods** challenge. Fully upgrade a Shrine of the Woods."
      , interactions = empty Text
      }
    : Schema.GameItem
