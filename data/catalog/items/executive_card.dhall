let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
{ name = "Executive Card"
, description = "Gain 10% cash back on all purchases. Multishops remain open."
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
