let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Ukulele"
        , description = "...and his music was electric."
        , image = "items/ukulele.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          25% chance to fire chain lightning for 80% TOTAL damage.
          Chain lightning hits up to 3 (+2 per stack) targets within 20m (+2m per stack).
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Ukulele can trigger Tri-Tip Dagger, Chronobauble, Sticky Bomb, and AtG Missile Mk. 1."
        , "AtG Missile Mk. 1 can trigger Ukulele."
        , "57 Leaf Clover effectively doubles the chance of triggering Ukulele."
        ]
      }
    : Schema.GameItem
