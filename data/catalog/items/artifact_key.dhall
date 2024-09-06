let empty =
      https://prelude.dhall-lang.org/List/empty
        sha256:b2f561f35098c457353723c93a22bd5de28d26ecc5370814bef9dfda421e0147

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
