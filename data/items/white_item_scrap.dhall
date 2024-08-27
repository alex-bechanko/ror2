let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "White Item Scrap"
        , description = "Does nothing. Prioritized when used with 3D Printers."
        , image = "items/white_item_scrap.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          ''
          Obtained by from a Scrapper.
          Prioritized when used with a 3D Printer, or a Cauldron.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
