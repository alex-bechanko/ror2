let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Gorag's Opus"
        , description = "You and all your allies enter a frenzy."
        , image = "items/gorags_opus.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Equipment
      , advanced_description =
          ''
          All allies enter a frenzy for 7 seconds.
          Increases movement speed by 50% and attack speed by 100%.
          ''
      , unlocked_by = None Text
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
