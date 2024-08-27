let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Gesture of the Drowned"
        , description =
            "Dramatically reduce Equipment cooldown... BUT it automatically activates."
        , image = "items/gesture_of_the_drowned.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          ''
          Reduce Equipment cooldown by 50% (+15% per stack).
          Forces your Equipment to activate whenever it is off cooldown.
          ''
      , unlocked_by = Some
          ''
          Complete the **The Demons and the Crabs** challenge.
          Kill 20 Hermit Crabs by chasing them off the edge of the map.
          ''
      , interactions = [ "Fuel Cell and Gesture of the Drowned combine well." ]
      }
    : Schema.GameItem
