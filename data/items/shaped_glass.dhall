let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Shaped Glass"
        , description = "Double your damage... BUT halve your health."
        , image = "items/shaped_glass.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          ''
          Increase base damage by 100% (+100% per stack).
          Reduce maximum health by 50% (+50% per stack).
          ''
      , unlocked_by = None Text
      , interactions = [ "Taking Shaped Glass removes one-shot protection" ]
      }
    : Schema.GameItem
