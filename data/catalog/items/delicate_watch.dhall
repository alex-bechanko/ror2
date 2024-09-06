let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Delicate Watch"
        , description = "Deal bonus damage. Breaks at low health."
        , image = "items/delicate_watch.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Common
      , advanced_description =
          "Increase damage by 20% (+20% per stack). Taking damage to below 25% health breaks this item."
      , unlocked_by = None Text
      , interactions =
        [ ''
          You lose Power Elixirs before losing Delicate Watches.
          That means they can serve as a form of protection for them.
          ''
        , "The second or third interaction with a Shrine of Blood can break Delicate Watches immediately."
        ]
      }
    : Schema.GameItem
