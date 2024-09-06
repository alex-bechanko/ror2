let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Topaz Broach"
        , description = "Gain temporary barrier on kill"
        , image = "items/topaz_broach.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          "Gain a temporary barrier on kill for 15 health (+15 per stack)."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
