let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Cautious Slug"
        , description = "Rapidly heal outside of danger."
        , image = "items/cautious_slug.png"
        , background = Some "backgrounds/common.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Common
      , advanced_description =
          "Increases base health regeneration by +3 hp/s (+3 hp/s per stack) while outside of combat"
      , unlocked_by = None Text
      , interactions = [ "Unaffected by Corpsebloom" ]
      }
    : Schema.GameItem
