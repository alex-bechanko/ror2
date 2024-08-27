let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Unstable Tesla Coil"
        , description = "Shock all nearby enemies every 10 seconds."
        , image = "items/unstable_tesla_coil.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          ''
          Fire out lightning that hits 3 (+2 per stack) enemies for 200% base damage every 0.5s.
          The Tesla Coil switches off every 10 seconds.
          ''
      , unlocked_by = Some
          "Complete the **Macho** challenge. Deal 5000 damage in one shot."
      , interactions =
        [ "Unstable Tesla Coil is very effective on melee survivors such as Loader and Mercenary."
        ]
      }
    : Schema.GameItem
