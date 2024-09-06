let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in { item = { name = "Death Mark"
, description = "Enemies with 4 or more debuffs are marked for death, taking bonus damage."
, image = "items/death_mark.png"
, background = Some "backgrounds/rare.png"
}
, dlc = None Dlc
, rarity = Rarity.Uncommon
, advanced_description = 
    ''
    Enemies with 4 or more debuffs are marked for death,
    increasing damage taken by 50% from all sources for 7 (+7 per stack) seconds.
    ''
, unlocked_by = None Text
, interactions = 
  [ ''
    Death Mark's 4 debuff requirement does not need to be done by a single player.
    This means multiplayer makes triggering Death Mark much easier.
    Death Mark's bonus damage applies to all players.
    ''
  , ''
    Debuffs that Survivors can trigger:
    - Acrid's Poison and Blight
    - Artificer's Flame bolt and Flamethrower inflicts Ignite
    - Bandit's Serrated Dagger and Serrated Shiv inflicts Hemorrhage
    - Heretic's Slicing Maelstrom inflicts Lunar Root, and the Ruin special inflicts Ruin  
    - Huntress's Arrow Rain inflicts 50% Slow
    - Mercenary's skills inflict Expose
    - Rex's DIRECTIVE: Inject and DIRECTIVE: Disperse inflict Weak, Tangling Growth inflicts Entangle, and DIRECTIVE:
      Harvest inflicts Fruiting.
    - Void Fiend's Drown inflicts 50% Slow
    ''
  , ''
    Debuffs that Items can trigger:
    - Tri-Tip Dagger and Shatterspleen inflicts Bleed
    - Needletick inflicts Collapse
    - Gasoline, Molten Perforator, Molotov (6-pack), and Ifrit's Distinction inflicts Ignite
    - Ignition Tank transforms a player's Ignite effects into Stronger Burn
    - Chronobauble inflicts 60% Slow
    - Tentabauble inflicts Nullified
    - Runald's Band, Her Biting Embrace, and Spectral Circle inflict 80% Slow
    - Shattering Justice inflicts Pulverize Buildup or Pulverized
    - Symbiotic Scorpion inflicts Permanent Armor Reduction
    - Hooks of Heresy inflicts Lunar Root
    - Essence of Heresy inflicts Ruin
    - Mired Urn inflicts Tar
    - Helfire Tincture inflicts Helfire
    - N'Kuhana's Retort inflicts Disable Healing on hit
    - Shared Design and Effigy of Grief inflicts Cripple
    ''
  ]
}
