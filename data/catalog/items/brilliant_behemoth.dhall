let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Brilliant Behemoth"
        , description = "All your attacks explode!"
        , image = "items/brilliant_behemoth.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          ''
          All your attacks explode in a 4m (+2.5m per stack) radius for a bonus 60%
          TOTAL damage to nearby enemies.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem