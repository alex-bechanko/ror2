let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Super Massive Leech"
        , description =
            "Heal for a percentage of the damage you deal for 8 seconds."
        , image = "items/super_massive_leech.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Equipment
      , advanced_description =
          "Heal for 20% of the damage you deal. Lasts 8 seconds."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
