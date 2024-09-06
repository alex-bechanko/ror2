let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Empathy Cores"
        , description =
            "Recruit a pair of Solus Probes that gain power with more allies."
        , image = "items/empathy_cores.png"
        , background = Some "backgrounds/boss.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Boss
      , advanced_description =
          "Every 30 seconds, summon two Solus Probes that gain +100% (+100% per stack) damage per ally on your team."
      , unlocked_by = None Text
      , interactions = [ "Spare Drone Parts augments Empathy Cores" ]
      }
    : Schema.GameItem
