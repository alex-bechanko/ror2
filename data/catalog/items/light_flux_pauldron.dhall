let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Light Flux Pauldron"
        , description = "Halve your cooldowns.. BUT halve your attack speed."
        , image = "items/light_flux_pauldron.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          "Decrease skill cooldowns by 50% (+50% per stack). Decrease attack speed by 50% (+50% per stack)."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
