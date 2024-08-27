let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Effigy of Grief"
        , description =
            "Drop a permanent effigy that cripples ALL characters inside. Can place up to 5. "
        , image = "items/effigy_of_grief.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          "ALL characters within are slowed by 50% and have their armor reduced by 20. Can place up to 5."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
