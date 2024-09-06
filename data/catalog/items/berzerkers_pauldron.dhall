let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Berzerker's Pauldron"
        , description =
            "Enter a frenzy after killing 4 enemies in quick succession."
        , image = "items/berzerkers_pauldron.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          Killing 4 enemies within 1 second sends you into a frenzy for 6s (+4s per stack).
          Increases movement speed by 50% and attack speed by 100%.
          ''
      , unlocked_by = Some
          ''
          Complete the **Glorious Battle** challenge.
          Charge the teleporter with less than 10% health.
          ''
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
