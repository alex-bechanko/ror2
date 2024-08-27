let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in { item = { name = "Shipping Request Form"
, description = "Get a delivery each stage that contains powerful items."
, image = "items/shipping_request_form.png"
, background = Some "backgrounds/rare.png"
}
, dlc = Some Dlc.SurvivorsOfTheVoid
, rarity = Rarity.Uncommon
, advanced_description =
    ''
    A delivery containing 2 items (79%/20%/1%) will appear in a random location on each stage.
    Chances of rare items increases per stack, by following these probabilities:
    ```
    p(Legendary) = (0.01 * n^2) / ( (0.01 * n^2) + (0.2 * n) + (0.79) )
    p(Uncommon)  = (0.2  * n)   / ( (0.01 * n^2) + (0.2 * n) + (0.79) )
    p(Common)    = 0.79         / ( (0.01 * n^2) + (0.2 * n) + (0.79) )
    ```
    ''
, unlocked_by = None Text
, interactions = 
  [ "Probability of rare items is aggregated across players"
  , "Executive Card allows you to take both items from the Shipping Request Form drop."
  , ''
    Giving Shipping Request Form to a Lemurian from the Artifact of Devotion treats it
    as if you are giving a Shipping Request Form to them all, and stacks accordingly.
    ''
  ]
} : Schema.GameItem
