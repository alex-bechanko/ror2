let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Glowing Meteorite"
        , description =
            "Rain meteors from the sky, hurting both enemies and allies."
        , image = "items/glowing_meteorite.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          "Rain meteors from the sky, damaging ALL characters for 600% damage per blast. Lasts 20 seconds."
      , unlocked_by = Some
          "Complete the **Moon Worshipper** challenge. Carry 5 Lunar items in a single run."
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
