let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Power Elixir"
        , description =
            "Receive an instant heal at low health. Consumed on use."
        , image = "items/power_elixir.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Common
      , advanced_description =
          "Taking damage to below 25% health consumes this item, healing you for 75% of maximum health."
      , unlocked_by = None Text
      , interactions =
        [ ''
          You lose Power Elixirs before losing Delicate Watches.
          That means they can serve as a form of protection for them.
          ''
        , "The second or third interaction with a Shrine of Blood can consume Power Elixirs immediately."
        , "Useful for keeping Engineer's turrets alive against powerful or numerous enemies"
        ]
      }
    : Schema.GameItem
