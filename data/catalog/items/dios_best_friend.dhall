let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Dio's Best Friend"
        , description = "Cheat death. Consumed on use."
        , image = "items/dios_best_friend.png"
        , background = Some "backgrounds/legendary.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Legendary
      , advanced_description =
          "Upon death, this item will be consumed and you will return to life with 3 seconds of invulnerability."
      , unlocked_by = Some
          "Complete the **The Lone Survivor** challenge. Stay alive for 30 consecutive minutes."
      , interactions = empty Text
      }
    : Schema.GameItem
