let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Bundle of Fireworks"
        , description =
            "Activating an interactable launches fireworks at nearby enemies."
        , image = "items/bundle_of_fireworks.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          "Activating an interactable launches 8 (+4 per stack) fireworks that deal 300% base damage."
      , unlocked_by = Some
          "Complete the **...Maybe One More** challenge. Print the same item 7 times in a row with a 3D printer"
      , interactions =
        [ ''
            Bundle of Fireworks is affected by Pocket I.C.B.M.
            Damage is increased and the number of fireworks that are released is tripled.
          ''
        , "Bundle of Fireworks can be triggered using the Remote Caffeinator's vending machine."
        ]
      }
    : Schema.GameItem
