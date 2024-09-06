let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Mired Urn"
        , description = "Siphon health from nearby enemies while in combat."
        , image = "items/mired_urn.png"
        , background = Some "backgrounds/boss.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Boss
      , advanced_description =
          ''
          While in combat, the nearest 1 (+1 per stack) enemies to you within 13m will
          be 'tethered' to you, dealing 100% damage per second, applying tar, and
          healing you for 100% of the damage dealt.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
