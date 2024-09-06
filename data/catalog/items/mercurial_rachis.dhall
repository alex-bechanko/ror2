let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Mercurial Rachis"
        , description =
            ''
            Randomly create a Ward of Power.
            ALL characters deal bonus damage while in the Ward.
            ''
        , image = "items/mercurial_rachis.png"
        , background = Some "backgrounds/lunar.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Lunar
      , advanced_description =
          ''
          Creates a Ward of Power in a random location nearby that buffs both enemies
          and allies within 16m (+50% per stack), causing them to deal +50% damage.
          ''
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
