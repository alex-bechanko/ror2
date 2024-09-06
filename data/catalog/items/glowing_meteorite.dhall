let empty = https://prelude.dhall-lang.org/List/empty

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
      , interactions = empty Text
      }
    : Schema.GameItem
