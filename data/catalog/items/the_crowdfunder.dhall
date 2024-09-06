let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "The Crowdfunder"
        , description = "Toggle to fire. Costs gold per bullet."
        , image = "items/the_crowdfunder.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Equipment
      , advanced_description =
          ''
          Fires a continuous barrage that deals 100% damage per bullet.
          Costs \$1 per bullet.
          Cost increases over time.
          ''
      , unlocked_by = Some
          "Complete the **Funded!** challenge. Collect \$30,480 total gold."
      , interactions = empty Text
      }
    : Schema.GameItem
