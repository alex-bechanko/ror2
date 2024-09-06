let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Regenerating Scrap"
        , description =
            "Prioritized when used with Uncommon 3D Printers. Usable once per stage."
        , image = "items/regenerating_scrap.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = Some Dlc.SurvivorsOfTheVoid
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          Does nothing.
          Prioritized when used with Uncommon 3D Printers.
          At the start of each stage, it regenerates.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
