let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Singularity Band"
        , description =
            ''
            High damage hits also create unstable black holes.
            Recharges over time.
            Corrupts all Runald's and Kjaro's Bands.
            ''
        , image = "items/singularity_band.png"
        , background = Some "backgrounds/void.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Void
      , advanced_description =
          ''
          Hits that deal more than 400% damage also fire a black hole that draws
          enemies within 15m into its center.
          Lasts 5 seconds before collapsing, dealing 100% (+100% per stack) TOTAL
          damage.
          Recharges every 20 seconds.
          Corrupts all Runald's and Kjaro's Bands.
          ''
      , unlocked_by = None Text
      , interactions = [ "Blast Shower resets Singularity Band cooldown." ]
      }
    : Schema.GameItem
