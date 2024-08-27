let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Hardlight Afterburner"
        , description =
            "Add 2 extra charges of your Utility skill. Reduce Utility skill cooldown."
        , image = "items/hardlight_afterburner.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          "Add +2 (+2 per stack) charges of your Utility skill. Reduces Utility skill cooldown by 33%."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
