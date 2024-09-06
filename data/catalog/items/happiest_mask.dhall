let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Happiest Mask"
        , description = "Chance on killing an enemy to summon a ghost."
        , image = "items/happiest_mask.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          ''
          Killing enemies has a 7% chance to spawn a ghost of the killed enemy with 1500% damage.
          Lasts 30s (+30s per stack).
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
