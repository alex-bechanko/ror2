let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Ocular HUD"
        , description = "Gain +100% Critical Strike Chance for 8 seconds."
        , image = "items/ocular_hud.png"
        , background = Some "backgrounds/equipment.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Equipment
      , advanced_description =
          "Gain +100% Critical Strike Chance for 8 seconds."
      , unlocked_by = None Text
      , interactions =
        [ "Railgunner recieved's +100% 'Critical Strike' damage instead." ]
      }
    : Schema.GameItem
