let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

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
