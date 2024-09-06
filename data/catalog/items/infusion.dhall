let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Infusion"
        , description =
            "Killing an enemy permanently increases your maximum health, up to 100."
        , image = "items/infusion.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          Killing an enemy increases your health permanently by 1 (+1 per stack),
          up to a maximum of 100 (+100 per stack) health.
          ''
      , unlocked_by = Some
          "Complete the **Slaughter** challenge. Defeat 3000 enemies."
      , interactions = [ "Forgive Me Please triggers Infusion" ]
      }
    : Schema.GameItem
