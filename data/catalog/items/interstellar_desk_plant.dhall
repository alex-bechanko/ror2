let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Interstellar Desk Plant"
        , description = "Plant a healing fruit on kill."
        , image = "items/interstellar_desk_plant.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          ''
          On kill, plant a healing fruit seed that grows into a plant after 5 seconds.
          The plant heals for 5% of maximum health every 0.5 second to all allies within 10m (+5.0m per stack).
          Lasts 10 seconds.
          ''
      , unlocked_by = None Text
      , interactions = [ "Forgive Me Please triggers Interstellar Desk Plant" ]
      }
    : Schema.GameItem
