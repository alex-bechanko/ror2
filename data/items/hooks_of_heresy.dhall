let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in  { item =
      { name = "Hooks of Heresy"
      , description = "Replace your Secondary Skill with 'Slicing Maelstrom'."
      , image = "items/hooks_of_heresy.png"
      , background = Some "backgrounds/lunar.png"
      }
    , dlc = None Dlc
    , rarity = Rarity.Lunar
    , advanced_description =
        ''
        Replace your Secondary Skill with Slicing Maelstrom.
        Charge up a projectile that deals 875% damage per second to nearby enemies,
        exploding after 3 seconds to deal 700% damage and root enemies for 
        3 (+3 per stack) seconds.
        Recharges after 5 (+5 per stack) seconds.
        ''
    , unlocked_by = None Text
    , interactions =
      [ ''
        Obtaining Essence of Heresy, Hooks of Heresy, Strides of Heresy,
        and Visions of Heresy transforms your survivor into the Heretic.
        ''
      ]
    }
