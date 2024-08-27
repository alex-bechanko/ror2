let empty = https://prelude.dhall-lang.org/List/empty

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
