let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "War Horn"
        , description =
            "Activating your Equipment gives you a burst of attack speed."
        , image = "items/war_horn.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          "Activating your Equipment gives you +70% attack speed for 8s (+4s per stack)."
      , unlocked_by = Some
          "Complete the **Warmonger** challenge. Complete 3 Combat Shrines in a single stage."
      , interactions =
        [ "Spinel Tonic works well with War Horn, because it boosts the attack speed effect to 120%"
        ]
      }
    : Schema.GameItem
