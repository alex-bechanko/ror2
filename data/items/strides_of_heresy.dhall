let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Strides of Heresy"
        , description = "Replace your Utility Skill with 'Shadowfade'."
        , image = "items/strides_of_heresy.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          ''
          Replace your Utility Skill with Shadowfade.
          Fade away, becoming intangible and gaining +30% movement speed.
          Heal for 18.2% (+18.2% per stack) of your maximum health. Lasts 3 (+3 per stack) seconds.
          ''
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
