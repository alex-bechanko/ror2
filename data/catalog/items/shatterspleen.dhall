let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Shatterspleen"
        , description =
            "Critical strikes always bleed enemies. Bleeding enemies now explode."
        , image = "items/shatterspleen.png"
        , background = Some "backgrounds/boss.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Boss
      , advanced_description =
          ''
          Gain 5% critical chance.
          Critical Strikes bleed enemies for 240% base damage.
          Bleeding enemies explode on death for 400% (+400% per stack) damage,
          plus an additional 15% (+15% per stack) of their maximum health.
          ''
      , unlocked_by = None Text
      , interactions =
        [ "Tri-Tip Dagger bleed is the same as Shatterspleen bleed effect" ]
      }
    : Schema.GameItem
