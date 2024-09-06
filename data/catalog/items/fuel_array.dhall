let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Fuel Array"
        , description =
            "Looks like it could power something. EXTREMELY unstable..."
        , image = "items/fuel_array.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Equipment
      , advanced_description =
          ''
          Obtained on the first stage by interacting with the back of an escape pod.
          If a survivor carrying this equipment gets to 50% health they explode.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
