let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Newly Hatched Zoea"
        , description =
            "Periodically recruit allies from the Void. Corrupts all yellow items."
        , image = "items/newly_hatched_zoea.png"
        , background = Some "backgrounds/void.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Void
      , advanced_description =
          ''
          Every 60 (-50% per stack) seconds, gain a random Void ally.
          Can have up to 1 (+1 per stack) allies at a time.
          Corrupts all yellow items.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
