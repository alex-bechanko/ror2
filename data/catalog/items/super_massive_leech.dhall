let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

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
