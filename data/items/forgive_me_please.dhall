let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
{ name = "Forgive Me Please"
, description = "Throw a cursed doll that repeatedly triggers your 'On Kill' effects."
, image = "items/forgive_me_please.png"
, background = Some "backgrounds/equipment.png"
}
, dlc = None Dlc
, rarity = Rarity.Equipment
, advanced_description = 
    "Throw a cursed doll out that triggers any On-Kill effects you have every 1 second for 8 seconds."
, unlocked_by = Some "Complete the **I Love Dying!** challenge. Die 20 times."
, interactions =
  [ ''
    Items that are triggered by Forgive Me Please:
    - Infusion
    - Ghor's Tome
    - Will-o'-the-Wisp
    - Hunter's Harpoon
    - Frost Relic
    - Gasoline
    - Monster Tooth Necklace
    - Bandolier
    - Ceremonial Dagger
    - Resonance Disk
    - Interstellar Desk Plant
    ''
  ]
}
