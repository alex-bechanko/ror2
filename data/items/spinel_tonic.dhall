let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in { item = { name = "Spinel Tonic"
, description = "Gain a massive boost to ALL stats. Chance to gain an affliction that reduces ALL stats."
, image = "items/spinel_tonic.png"
, background = Some "backgrounds/equipment.png"
}
, dlc = None Dlc
, rarity = Rarity.Lunar
, advanced_description = 
    ''
    Drink the Tonic, gaining a boost for 20 seconds.
    Increases damage by +100%.
    Increases attack speed by +70%.
    Increases armor by +20. 
    Increases maximum health by +50%.
    Increases passive health regeneration by +300%.
    Increases movespeed by +30%.
    When the Tonic wears off, you have a 20% chance to gain a stack of Tonic Affliction.
    Tonic Affliction reduces all of your stats by -5% (-5% per stack)."
    ''
, unlocked_by = Some "Complete the **Cosmic Explorer** challenge. Discover and enter 3 unique portals."
, interactions = 
  [ "57 Leaf Clover reduces chance for Tonic Affliction."
  , "The regeneration buff applies to Cautious Slug and Titanic Knurl."
  , ''
    Can be maintained permanently with at least one Gesture of the Drowned and
    3 of any combination of Fuel Cells and Gesture of the Drowned.
    ''
  ]
}
