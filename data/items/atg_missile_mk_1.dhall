let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "AtG Missile Mk. 1"
        , description = "Chance to fire a missile."
        , image = "items/atg_missile_mk_1.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          "10% chance to fire a missile that deals 300% (+300% per stack) TOTAL damage."
      , unlocked_by = None Text
      , interactions =
        [ "Kjaro's band and Runald's band will trigger with two stacks of AtG Missile Mk. 1"
        , "AtG Missile Mk.1 will 'Critically Strike' if the hit that triggered it was a 'Critical Strike'."
        , "Ukulele can trigger AtG Missile Mk. 1."
        , "57 Leaf Clover effectively doubles the chance of triggering AtG Missile Mk. 1."
        ]
      }
    : Schema.GameItem
