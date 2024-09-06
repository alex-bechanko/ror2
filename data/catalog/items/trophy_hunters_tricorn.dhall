let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Trophy Hunter's Tricorn"
        , description =
            "Execute a large monster and claim its trophy. Consumed on use."
        , image = "items/trophy_hunters_tricorn.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Equipment
      , advanced_description =
          ''
          Execute any enemy capable of spawning a unique reward, and it will drop that item.
          Equipment is consumed on use.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
