let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Stun Grenade"
        , description = "Chance to stun on hit."
        , image = "items/stun_grenade.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          "5% (+5% on stack) chance on hit to stun enemies for 2 seconds."
      , unlocked_by = None Text
      , interactions =
        [ "Stun Grenade does not count as a debuff for Death Mark." ]
      }
    : Schema.GameItem
