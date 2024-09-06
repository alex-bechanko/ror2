let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Artifact Key"
        , description = "A stone shard with immense power."
        , image = "items/artifact_key.png"
        , background = Some "backgrounds/boss.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Boss
      , advanced_description =
          "Only dropped when in Bulwark's Ambry to damage the Artifact Reliquary."
      , unlocked_by = None Text
      , interactions = empty Text
      }
    : Schema.GameItem
