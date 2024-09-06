let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Remote Caffeinator"
        , description = "Request a healing soda machine."
        , image = "items/remote_caffeinator.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Equipment
      , advanced_description =
          ''
          Request an Eclipse Zero Vending Machine from the UES Safe Travels.
          Delivery guaranteed in 5 seconds, dealing 2000% damage.
          Heal up to 3 targets for 25% of their maximum health.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Buying soda from Remote Caffeinator triggers Bundle of Fireworks."
        , "Buying soda from Remote Caffeinator triggers Squid Polyp."
        ]
      }
    : Schema.GameItem
