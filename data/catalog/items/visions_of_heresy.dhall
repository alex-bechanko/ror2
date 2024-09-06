let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Visions of Heresy"
        , description = "Replace your Primary Skill with 'Hungering Gaze'."
        , image = "items/visions_of_heresy.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          "Replace your Primary Skill with Hungering Gaze. Fire a flurry of tracking shards that detonate after a delay, dealing 120% base damage. Hold up to 12 charges (+12 per stack) that reload after 2 seconds (+2 per stack)."
      , unlocked_by = Some
          "Complete the **Blockade Breaker** challenge. Kill 15 monsters in a single run."
      , interactions =
        [ ''
          Obtaining Essence of Heresy, Hooks of Heresy, Strides of Heresy,
          and Visions of Heresy transforms your survivor into the Heretic.
          ''
        ]
      }
    : Schema.GameItem
