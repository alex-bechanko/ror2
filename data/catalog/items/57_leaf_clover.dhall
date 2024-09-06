let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in { item = { name = "57 Leaf Clover"
, description = "Luck is on your side."
, image = "items/57_leaf_clover.png"
, background = Some "backgrounds/legendary.png"
}
, dlc = None Dlc
, rarity = Rarity.Legendary
, advanced_description = 
    "All random effects are rolled +1 (+1 per stack) times for a favorable outcome."
, unlocked_by = Some "Complete the **The Long Road** challenge. Complete 20 stages in a single run"
, interactions = 
  [ "Purity and 57 Leaf Clover cancel each other out."
  , ''
    57 Leaf Clover affects the following items:
    - Lens-Maker's Glasses
    - Stun Grenade
    - Tri-Tip Dagger
    - Ukulele
    - Sticky Bomb
    - AtG Missile Mk. 1
    - Bandolier
    - Ghor's Tome
    - Sentient Meat Hook
    - Happiest Mask
    - Molten Perforator
    - Charged Perforator
    - Brittle Crown
    - Spinel Tonic
    - Eulogy Zero
    - Lost Seer's Lenses
    - Needletick
    - Polylute
    - Tentabauble
    ''
  , "Increases chance of a monster dropping its log."
  , "Increases chance of Elite equipment dropping from its corresponding Elite monster."
  ]
}