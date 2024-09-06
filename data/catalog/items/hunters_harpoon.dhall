let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Hunter's Harpoon"
        , description = "Killing an enemy gives you a burst of movement speed."
        , image = "items/hunters_harpoon.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Uncommon
      , advanced_description =
          "Killing an enemy increases movement speed by 125%, fading over 1 (+0.5 per stack) seconds."
      , unlocked_by = None Text
      , interactions = [ "Forgive Me Please triggers Hunter's Harpoon." ]
      }
    : Schema.GameItem
