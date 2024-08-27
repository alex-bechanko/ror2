let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in { item = { name = "Genesis Loop"
, description = "Fire an electric nova at low health."
, image = "items/genesis_loop.png"
, background = Some "backgrounds/boss.png"
}
, dlc = None Dlc
, rarity = Rarity.Boss
, advanced_description = 
    ''
    Falling below 25% health causes you to explode, dealing 6000% base damage.
    Recharges every 30 / (2 +1 per stack) seconds.
    ''
, unlocked_by = None Text
, interactions = empty Text
}
