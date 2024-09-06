let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Red Whip"
        , description = "Move fast out of combat."
        , image = "items/red_whip.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          "Leaving combat boosts your movement speed by 30% (+30% per stack)."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem