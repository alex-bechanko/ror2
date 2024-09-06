let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in  { item =
      { name = "Executive Card"
      , description =
          "Gain 10% cash back on all purchases. Multishops remain open."
      , image = "items/executive_card.png"
      , background = Some "backgrounds/equipment.png"
      }
    , dlc = Some Dlc.SurvivorsOfTheVoid
    , rarity = Rarity.Equipment
    , advanced_description =
        ''
        Whenever you make a gold purchase, get 10% of the spent gold back.
        If the purchase is a multishop terminal, the other terminals will remain open.
        ''
    , unlocked_by = None Text
    , interactions = empty Text
    }
