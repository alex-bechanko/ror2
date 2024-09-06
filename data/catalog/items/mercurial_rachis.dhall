let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Mercurial Rachis"
        , description =
            ''
            Randomly create a Ward of Power.
            ALL characters deal bonus damage while in the Ward.
            ''
        , image = "items/mercurial_rachis.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          ''
          Creates a Ward of Power in a random location nearby that buffs both enemies
          and allies within 16m (+50% per stack), causing them to deal +50% damage.
          ''
      , unlocked_by = None Text
      , interactions = Prelude.List.empty Text
      }
    : Schema.GameItem
