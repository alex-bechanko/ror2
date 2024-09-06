let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

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
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
