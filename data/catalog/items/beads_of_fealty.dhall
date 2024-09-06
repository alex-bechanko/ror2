let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in { item = { name = "Beads of Fealty"
, description = "Seems to do nothing... but..."
, image = "items/beads_of_fealty.png"
, background = Some "backgrounds/lunar.png"
}
, dlc = None Dlc
, rarity = Rarity.Lunar
, advanced_description = 
    ''
    Used on the obliteration Obelisk to enter the A Moment, Whole
    stage from the A Moment, Fractured.
    ''
, unlocked_by = None Text
, interactions = empty Text
}
