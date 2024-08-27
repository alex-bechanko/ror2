let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in { item = { name = "Bandolier"
, description = "Chance on kill to drop an ammo pack that resets all skill cooldowns."
, image = "items/bandolier.png"
, background = Some "backgrounds/rare.png"
}
, dlc = None Dlc
, rarity = Rarity.Uncommon
, advanced_description =
    "18% (+10% per stack) chance on kill to drop an ammo pack that resets all skill cooldowns."
, unlocked_by = None Text
, interactions = 
  [ "Forgive Me Please triggers Bandolier"
  , "57 Leaf Clover effectively doubles the chance that Bandolier triggers."
  ]
}
