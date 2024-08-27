let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Transcendence"
        , description =
            "Convert all your health into shield. Increase maximum health."
        , image = "items/transcendence.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          "Convert all but 1 health into regenerating shields. Gain 50% (+25% per stack) maximum health."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
