let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Will-o'-the-wisp"
        , description = "Detonate enemies on kill"
        , image = "items/will-o-the-wisp.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          On killing an enemy, spawn a lava pillar in a 12m (+2.4m per stack) radius.
          The lava pillar does 350% (+280% per stack) base damage.
          ''
      , unlocked_by = None Text
      , interactions = [ "Forgive Me Please triggers Will-o'-the-wisp" ]
      }
    : Schema.GameItem
