let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

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
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
