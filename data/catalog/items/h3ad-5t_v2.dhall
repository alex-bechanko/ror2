let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "H3AD-5T v2"
        , description =
            "Increase jump height. Hold 'Interact' to slam down to the ground."
        , image = "items/h3ad-5t_v2.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          ''
          Increase jump height.
          Creates a 5m-100m radius kinetic explosion on hitting the ground.
          The explosion deals 1000%-10000% base damage that scales up with fall distance.
          Recharges in 10 (-50% per stack) seconds.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "H3AD-5T v2 can trigger Kjaro's Band and Runald's Band." ]
      }
    : Schema.GameItem
