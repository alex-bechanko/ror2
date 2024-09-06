let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

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
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
