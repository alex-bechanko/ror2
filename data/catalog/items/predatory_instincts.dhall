let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in { item = { name = "Predatory Instincts"
, description = "'Critical Strikes' increase attack speed. Stacks 3 times."
, image = "items/predatory_instincts.png"
, background = Some "backgrounds/rare.png"
}
, dlc = None Dlc
, rarity = Rarity.Uncommon
, advanced_description = 
    ''
    Gain 5% critical chance. Critical strikes increase attack speed by 12%.
    Maximum cap of 36% (+24% per stack) attack speed.
    ''
, unlocked_by = Some "Complete the **Rapidfire** challenge. Reach 200% attack speed."
, interactions =
  [ "The chance of 'Critical Strike' does not increase with multiple stacks of Predatory Instincts"
  , "Shatterspleen bleed effect chance is the same as critical hit chance"
  , ''
    Predatory Instints and Harvester's Scythe increase the chance to `Critically Strike' just like Len's Maker's
    Glasses.
    Combined you need nine stacks of Lens-Maker's Glasses, one stack of Predatory Instincts, and one stack of
    Harvester's Scythe to achieve 100% chance to `Critically Strike`.
    ''
  ]
}
