let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Essence of Heresy"
        , description = "Replace your Special Skill with 'Ruin'."
        , image = "items/essence_of_heresy.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          ''
          Replace your Special Skill with Ruin.
          Dealing damage adds a stack of Ruin for 10 (+10 per stack) seconds.
          Activating the skill detonates all Ruin stacks at unlimited range, dealing
          300% damage plus 120% damage per stack of Ruin.
          Recharges after 8 (+8 per stack) seconds.
          ''
      , unlocked_by = None Text
      , interactions =
        [ ''
          Obtaining Essence of Heresy, Hooks of Heresy, Strides of Heresy,
          and Visions of Heresy transforms your survivor into the Heretic.
          ''
        ]
      }
    : Schema.GameItem
