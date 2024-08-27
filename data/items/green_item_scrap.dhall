let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Green Item Scrap"
        , description = "Does nothing. Prioritized when used with 3D Printers."
        , image = "items/green_item_scrap.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          Obtained by from a Scrapper.
          Prioritized when used with a 3D Printer, or a Cauldron.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
