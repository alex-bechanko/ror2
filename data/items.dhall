let Prelude =
      https://prelude.dhall-lang.org/v22.0.0/package.dhall
        sha256:1c7622fdc868fe3a23462df3e6f533e50fdc12ecf3b42c0bb45c328ec8c4293e

let Rarity : Type = < Common | Rare | Legendary | Boss | Lunar | Void | Equipment >

let BasicItem : Type = { name : Text, rarity : Rarity, description : Text }

let Item : Type =
      { name : Text
      , rarity : Rarity
      , description : Text
      , image : Text
      , background : Text
      }

let name_to_image = \(x: Text) -> (Prelude.Text.replace ")" "" (Prelude.Text.replace "(" "" (Prelude.Text.replace "." "" (Prelude.Text.replace "'" "" (Prelude.Text.replace " " "_" (Prelude.Text.lowerASCII x)))))) ++ ".png"

let rarity_to_background_image = \(x: Rarity) -> merge { Common = "common.png", Rare = "rare.png", Legendary = "legendary.png", Boss = "boss.png", Lunar = "lunar.png", Void = "void.png", Equipment = "equipment.png"} x

let item_metadata = \(name : Text) -> \(rarity: Rarity) -> {image = name_to_image name, background = rarity_to_background_image rarity}

let add_item_metadata = \(item : BasicItem) -> item /\ (item_metadata item.name item.rarity)

let items = [ { name = "Repulsion Armor Plate"
      , rarity = Rarity.Common
      , description =
          "Reduce all incoming damage by 5 (+5 per stack). Cannot be reduced below 1."
      }
    , { name = "Mocha"
      , rarity = Rarity.Common
      , description =
          "Increases attack speed by 7.5% (+7.5 per stack) and movement speed by 7% (+7% per stack). "
      }
    , { name = "Topaz Broach"
      , rarity = Rarity.Common
      , description =
          "Gain a temporary barrier on kill for 15 health (+15 per stack)."
      }
    , { name = "Tougher Times"
      , rarity = Rarity.Common
      , description =
          "15% (+15% per stack) chance to block incoming damage. Unaffected by luck."
      }
    , { name = "Tri-Tip Dagger"
      , rarity = Rarity.Common
      , description =
          "10% (+10% per stack) chance to bleed an enemy for 240% base damage."
      }
    , { name = "Armor-Piercing Rounds"
      , rarity = Rarity.Common
      , description = "Deal an additional 20% damage (+20% per stack) bosses."
      }
    , { name = "Lens-Maker's Glasses"
      , rarity = Rarity.Common
      , description =
          "Your attacks have a 10% (+10% per stack) chance to 'Critically Strike', dealing double damage."
      }
    , { name = "Crowbar"
      , rarity = Rarity.Common
      , description =
          "Deal +75% (+75% per stack) damage to enemies above 90% health."
      }
    , { name = "Bundle of Fireworks"
      , rarity = Rarity.Common
      , description =
          "Activating an interactable launches 8 (+4 per stack) fireworks that deal 300% base damage."
      }
    , { name = "Bison Steak"
      , rarity = Rarity.Common
      , description = "Increases maximum health by 25 (+25 per stack)."
      }
    , { name = "Delicate Watch"
      , rarity = Rarity.Common
      , description =
          "Increase damage by 20% (+20% per stack). Taking damage to below 25% health breaks this item."
      }
    , { name = "Roll of Pennies"
      , rarity = Rarity.Common
      , description =
          "Gain 3 (+3 per stack) gold on taking damage from an enemy. Scales over time."
      }
    , { name = "Cautious Slug"
      , rarity = Rarity.Common
      , description =
          "Increases base health regeneration by +3 hp/s (+3 hp/s per stack) while outside of combat."
      }
    , { name = "Power Elixir"
      , rarity = Rarity.Common
      , description =
          "Taking damage to below 25% health consumes this item, healing you for 75% of maximum health."
      }
    , { name = "Paul's Goat Hoof"
      , rarity = Rarity.Common
      , description = "Increases movement speed by 14% (+14% per stack)."
      }
    , { name = "Gasoline"
      , rarity = Rarity.Common
      , description =
          "Killing an enemy ignites all enemies within 12m (+4m per stack) for 150% base damage. Additionally, enemies burn for 150% (+75% per stack) base damage."
      }
    , { name = "Medkit"
      , rarity = Rarity.Common
      , description =
          "2 seconds after getting hurt, heal for 20 plus an additional 5% (+5% per stack) of maximum health."
      }
    , { name = "Bustling Fungus"
      , rarity = Rarity.Common
      , description =
          "After standing still for 1 second, create a zone that heals for 4.5% (+2.25% per stack) of your health every second to all allies within 3m (+1.5m per stack)."
      }
    , { name = "Focus Crystal"
      , rarity = Rarity.Common
      , description =
          "Increase damage to enemies within 13m by 20% (+20% per stack)."
      }
    , { name = "Oddly-Shaped Opal"
      , rarity = Rarity.Common
      , description =
          "Increase armor by 100 (+100 per stack) while out of danger."
      }
    , { name = "Personal Shield Generator"
      , rarity = Rarity.Common
      , description =
          "Gain a shield equal to 8% (+8% per stack) of your maximum health. Recharges outside of danger."
      }
    , { name = "White Item Scrap"
      , rarity = Rarity.Common
      , description = "Does nothing. Prioritized when used with 3D Printers."
      }
    , { name = "Backup Magazine"
      , rarity = Rarity.Common
      , description = "Add +1 (+1 per stack) charge of your Secondary skill."
      }
    , { name = "Energy Drink"
      , rarity = Rarity.Common
      , description = "Sprint speed is improved by 25% (+25% per stack)."
      }
    , { name = "Sticky Bomb"
      , rarity = Rarity.Common
      , description =
          "5% (+5% per stack) chance on hit to attach a bomb to an enemy, detonating for 180% TOTAL damage."
      }
    , { name = "Stun Grenade"
      , rarity = Rarity.Common
      , description =
          "5% (+5% on stack) chance on hit to stun enemies for 2 seconds."
      }
    , { name = "Soldier's Syringe"
      , rarity = Rarity.Common
      , description = "Increases attack speed by 15% (+15% per stack)."
      }
    , { name = "Monster Tooth"
      , rarity = Rarity.Common
      , description =
          "Killing an enemy spawns a healing orb that heals for 8 plus an additional 2% (+2% per stack) of maximum health."
      }
    , { name = "Rusted Key"
      , rarity = Rarity.Common
      , description =
          "A hidden cache containing an item (80%/20%) will appear in a random location on each stage. Opening the cache consumes this item."
      }
    , { name = "Warbanner"
      , rarity = Rarity.Common
      , description =
          "On level up or starting the Teleporter event, drop a banner that strengthens all allies within 16m (+8m per stack). Raise attack and movement speed by 30%."
      }
    , { name = "Predatory Instincts"
      , rarity = Rarity.Rare
      , description =
          "Gain 5% critical chance. Critical strikes increase attack speed by 12%. Maximum cap of 36% (+24% per stack) attack speed."
      }
    , { name = "Bandolier"
      , rarity = Rarity.Rare
      , description =
          "18% (+10% per stack) chance on kill to drop an ammo pack that resets all skill cooldowns."
      }
    , { name = "Ghor's Tome"
      , rarity = Rarity.Rare
      , description =
          "4% (+4% on stack) chance on kill to drop a treasure worth \$25. Scales over time."
      }
    , { name = "Ukulele"
      , rarity = Rarity.Rare
      , description =
          "25% chance to fire chain lightning for 80% TOTAL damage on up to 3 (+2 per stack) targets within 20m (+2m per stack)."
      }
    , { name = "Death Mark"
      , rarity = Rarity.Rare
      , description =
          "Enemies with 4 or more debuffs are marked for death, increasing damage taken by 50% from all sources for 7 (+7 per stack) seconds."
      }
    , { name = "War Horn"
      , rarity = Rarity.Rare
      , description =
          "Activating your Equipment gives you +70% attack speed for 8s (+4s per stack)."
      }
    , { name = "Fuel Cell"
      , rarity = Rarity.Rare
      , description =
          "Hold an additional equipment charge (+1 per stack). Reduce equipment cooldown by 15% (+15% per stack)."
      }
    , { name = "Old Guillotine"
      , rarity = Rarity.Rare
      , description =
          "Instantly kill Elite monsters below 13% (+13% per stack) health."
      }
    , { name = "Will-o'-the-wisp"
      , rarity = Rarity.Rare
      , description =
          "On killing an enemy, spawn a lava pillar in a 12m (+2.4m per stack) radius for 350% (+280% per stack) base damage."
      }
    , { name = "Hopoo Feather"
      , rarity = Rarity.Rare
      , description = "Gain +1 (+1 per stack) maximum jump count."
      }
    , { name = "Kjaro's Band"
      , rarity = Rarity.Rare
      , description =
          "Hits that deal more than 400% damage also blasts enemies with a runic flame tornado, dealing 300% (+300% per stack) TOTAL damage over time. Recharges every 10 seconds."
      }
    , { name = "Shipping Request Form"
      , rarity = Rarity.Rare
      , description =
          "A delivery containing 2 items (79%/20%/1%) will appear in a random location on each stage. (Increases rarity chances of the items per stack)."
      }
    , { name = "Harvester's Scythe"
      , rarity = Rarity.Rare
      , description =
          "Gain 5% critical chance. Critical strikes heal for 8 (+4 per stack) health."
      }
    , { name = "Runald's Band"
      , rarity = Rarity.Rare
      , description =
          "Hits that deal more than 400% damage also blasts enemies with a runic ice blast, slowing them by 80% for 3s (+3s per stack) and dealing 250% (+250% per stack) TOTAL damage. Recharges every 10 seconds."
      }
    , { name = "Infusion"
      , rarity = Rarity.Rare
      , description =
          "Killing an enemy increases your health permanently by 1 (+1 per stack), up to a maximum of 100 (+100 per stack) health."
      }
    , { name = "Wax Quail"
      , rarity = Rarity.Rare
      , description =
          "Jumping while sprinting boosts you forward by 10m (+10m per stack)."
      }
    , { name = "AtG Missile Mk. 1"
      , rarity = Rarity.Rare
      , description =
          "10% chance to fire a missile that deals 300% (+300% per stack) TOTAL damage."
      }
    , { name = "Hunter's Harpoon"
      , rarity = Rarity.Rare
      , description =
          "Killing an enemy increases movement speed by 125%, fading over 1 (+0.5 per stack) seconds."
      }
    , { name = "Old War Stealthsuit"
      , rarity = Rarity.Rare
      , description =
          "Falling below 25% health causes you to gain 40% movement speed and invisibility for 5s. Recharges every 30 seconds (-50% per stack)."
      }
    , { name = "Shuriken"
      , rarity = Rarity.Rare
      , description =
          "Activating your Primary skill also throws a shuriken that deals 400% (+100% per stack) base damage. You can hold up to 3 (+1 per stack) shurikens which all reload over 10 seconds."
      }
    , { name = "Regenerating Scrap"
      , rarity = Rarity.Rare
      , description =
          "Does nothing. Prioritized when used with Uncommon 3D Printers. At the start of each stage, it regenerates."
      }
    , { name = "Green Item Scrap"
      , rarity = Rarity.Rare
      , description = "Does nothing. Prioritized when used with 3D Printers."
      }
    , { name = "Leeching Seed"
      , rarity = Rarity.Rare
      , description = "Dealing damage heals you for 1 (+1 per stack) health."
      }
    , { name = "Chronobauble"
      , rarity = Rarity.Rare
      , description =
          "Slow enemies on hit for -60% movement speed for 2s (+2s per stack)."
      }
    , { name = "Rose Buckler"
      , rarity = Rarity.Rare
      , description = "Increase armor by 30 (+30 per stack) while sprinting."
      }
    , { name = "Red Whip"
      , rarity = Rarity.Rare
      , description =
          "Leaving combat boosts your movement speed by 30% (+30% per stack)."
      }
    , { name = "Squid Polyp"
      , rarity = Rarity.Rare
      , description =
          "Activating an interactable summons a Squid Turret that attacks nearby enemies at 100% (+100% per stack) attack speed. Lasts 30 seconds."
      }
    , { name = "Ignition Tank"
      , rarity = Rarity.Rare
      , description =
          "Ignite effects deal +300% (+300% per stack) more damage over time."
      }
    , { name = "Lepton Daisy"
      , rarity = Rarity.Rare
      , description =
          "Release a healing nova during the Teleporter event, healing all nearby allies for 50% of their maximum health. Occurs 1 (+1 per stack) times."
      }
    , { name = "Razorwire"
      , rarity = Rarity.Rare
      , description =
          "Getting hit causes you to explode in a burst of razors, dealing 160% damage. Hits up to 5 (+2 per stack) targets in a 25m (+10m per stack) radius"
      }
    , { name = "Berzerker's Pauldron"
      , rarity = Rarity.Rare
      , description =
          "Killing 4 enemies within 1 second sends you into a frenzy for 6s (+4s per stack). Increases movement speed by 50% and attack speed by 100%."
      }
    , { name = "Alien Head"
      , rarity = Rarity.Legendary
      , description = "Reduce skill cooldowns by 25% (+25% per stack)."
      }
    , { name = "Shattering Justice"
      , rarity = Rarity.Legendary
      , description =
          "After hitting an enemy 5 times, reduce their armor by 60 for 8 (+8 per stack) seconds."
      }
    , { name = "Aegis"
      , rarity = Rarity.Legendary
      , description =
          "Healing past full grants you a temporary barrier for 50% (+50% per stack) of the amount you healed."
      }
    , { name = "Brilliant Behemoth"
      , rarity = Rarity.Legendary
      , description =
          "All your attacks explode in a 4m (+2.5m per stack) radius for a bonus 60% TOTAL damage to nearby enemies."
      }
    , { name = "Sentient Meat Hook"
      , rarity = Rarity.Legendary
      , description =
          "20% (+20% per stack) chance on hit to fire homing hooks at up to 10 (+5 per stack) enemies for 100% TOTAL damage."
      }
    , { name = "Defensive Microbots"
      , rarity = Rarity.Legendary
      , description =
          "Shoot down 1 (+1 per stack) projectiles within 20m every 0.5 seconds. Recharge rate scales with attack speed."
      }
    , { name = "57 Leaf Clover"
      , rarity = Rarity.Legendary
      , description =
          "All random effects are rolled +1 (+1 per stack) times for a favorable outcome."
      }
    , { name = "Laser Scope"
      , rarity = Rarity.Legendary
      , description =
          "Critical Strikes deal an additional 100% damage (+100% per stack)."
      }
    , { name = "Ceremonial Dagger"
      , rarity = Rarity.Legendary
      , description =
          "Killing an enemy fires out 3 homing daggers that deal 150% (+150% per stack) base damage."
      }
    , { name = "Spare Drone Parts"
      , rarity = Rarity.Legendary
      , description =
          "Gain Col. Droneman. Drones gain +50% (+50% per stack) attack speed and cooldown reduction. Drones gain 10% chance to fire a missile on hit, dealing 300% TOTAL damage. Drones gain an automatic chain gun that deals 6x100% damage, bouncing to 2 enemies."
      }
    , { name = "Dio's Best Friend"
      , rarity = Rarity.Legendary
      , description =
          "Upon death, this item will be consumed and you will return to life with 3 seconds of invulnerability."
      }
    , { name = "H3AD-5T v2"
      , rarity = Rarity.Legendary
      , description =
          "Increase jump height. Creates a 5m-100m radius kinetic explosion on hitting the ground, dealing 1000%-10000% base damage that scales up with fall distance. Recharges in 10 (-50% per stack) seconds."
      }
    , { name = "Happiest Mask"
      , rarity = Rarity.Legendary
      , description =
          "Killing enemies has a 7% chance to spawn a ghost of the killed enemy with 1500% damage. Lasts 30s (+30s per stack)."
      }
    , { name = "Wake of Vultures"
      , rarity = Rarity.Legendary
      , description =
          "Gain the power of any killed elite monster for 8s (+5s per stack)."
      }
    , { name = "Frost Relic"
      , rarity = Rarity.Legendary
      , description =
          "Killing an enemy surrounds you with an ice storm that deals 1200% damage per second and slows enemies by 80% for 1.5s. The storm grows with every kill, increasing its radius by 2m. Stacks up to 18m (+12m per stack)."
      }
    , { name = "Ben's Raincoat"
      , rarity = Rarity.Legendary
      , description =
          "Whenever you would receive a debuff, prevent it. Increases maximum health by 100 (+100 per stack)."
      }
    , { name = "Rejuvenation Rack"
      , rarity = Rarity.Legendary
      , description = "Heal +100% (+100% per stack) more."
      }
    , { name = "Brainstalks"
      , rarity = Rarity.Legendary
      , description =
          "Upon killing an elite monster, enter a frenzy for 4s (+4s per stack) where skills have 0.5s cooldowns."
      }
    , { name = "Resonance Disk"
      , rarity = Rarity.Legendary
      , description =
          "Killing 4 enemies in 7 seconds charges the Resonance Disc. The disc launches itself toward a target for 300% base damage (+300% per stack), piercing all enemies it doesn't kill, and then explodes for 1000% base damage (+1000% per stack). Returns to the user, striking all enemies along the way for 300% base damage (+300% per stack)."
      }
    , { name = "Pocket I.C.B.M."
      , rarity = Rarity.Legendary
      , description =
          "All missile items and equipment fire an additional 2 missiles. Increase missile damage by 0% (+50% per stack)"
      }
    , { name = "N'kuhana's Opinion"
      , rarity = Rarity.Legendary
      , description =
          "Store 100% (+100% per stack) of healing as Soul Energy. After your Soul Energy reaches 10% of your maximum health, fire a skull that deals 250% of your Soul Energy as damage."
      }
    , { name = "Symbiotic Scorpion"
      , rarity = Rarity.Legendary
      , description = "On hit reduce armor by 2 (+2 per stack) permanently."
      }
    , { name = "Interstellar Desk Plant"
      , rarity = Rarity.Legendary
      , description =
          "On kill, plant a healing fruit seed that grows into a plant after 5 seconds. The plant heals for 5% of maximum health every 0.5 second to all allies within 10m (+5.0m per stack). Lasts 10 seconds. "
      }
    , { name = "Bottled Chaos"
      , rarity = Rarity.Legendary
      , description =
          "Trigger a random equipment effect 1 (+1 per stack) time(s)."
      }
    , { name = "Red Item Scrap"
      , rarity = Rarity.Legendary
      , description = "Does nothing. Prioritized when used with 3D Printers."
      }
    , { name = "Unstable Tesla Coil"
      , rarity = Rarity.Legendary
      , description =
          "Fire out lightning that hits 3 (+2 per stack) enemies for 200% base damage every 0.5s. The Tesla Coil switches off every 10 seconds."
      }
    , { name = "Soulbound Catalyst"
      , rarity = Rarity.Legendary
      , description = "Kills reduce equipment cooldown by 4s (+2s per stack)."
      }
    , { name = "Hardlight Afterburner"
      , rarity = Rarity.Legendary
      , description =
          "Add +2 (+2 per stack) charges of your Utility skill. Reduces Utility skill cooldown by 33%."
      }
    , { name = "Artifact Key"
      , rarity = Rarity.Boss
      , description = "A stone shard with immense power."
      }
    , { name = "Queen's Gland"
      , rarity = Rarity.Boss
      , description =
          "Every 30 seconds, summon a Beetle Guard with bonus 300% damage and 100% health. Can have up to 1 (+1 per stack) Guards at a time."
      }
    , { name = "Shatterspleen"
      , rarity = Rarity.Boss
      , description =
          "Gain 5% critical chance. Critical Strikes bleed enemies for 240% base damage. Bleeding enemies explode on death for 400% (+400% per stack) damage, plus an additional 15% (+15% per stack) of their maximum health."
      }
    , { name = "Molten Perforator"
      , rarity = Rarity.Boss
      , description =
          "10% chance on hit to call forth 3 magma balls from an enemy, dealing 300% (+300% per stack) damage each."
      }
    , { name = "Titanic Knurl"
      , rarity = Rarity.Boss
      , description =
          "Increase maximum health by 40 (+40 per stack) and base health regeneration by +1.6 hp/s (+1.6 hp/s per stack)."
      }
    , { name = "Charged Perforator"
      , rarity = Rarity.Boss
      , description =
          "10% chance on hit to down a lightning strike, dealing 500% (+500% per stack) damage."
      }
    , { name = "Defense Nucleus"
      , rarity = Rarity.Boss
      , description =
          "Killing elite monsters spawns an Alpha Construct. Limited to 4 (+4 per stack)."
      }
    , { name = "Genesis Loop"
      , rarity = Rarity.Boss
      , description =
          "Falling below 25% health causes you to explode, dealing 6000% base damage. Recharges every 30 / (2 +1 per stack) seconds."
      }
    , { name = "Planula"
      , rarity = Rarity.Boss
      , description = "Heal from incoming damage for 15 (+15 per stack)."
      }
    , { name = "Irradiant Pearl"
      , rarity = Rarity.Boss
      , description = "Increases ALL stats by 10% (+10% per stack)."
      }
    , { name = "Empathy Cores"
      , rarity = Rarity.Boss
      , description =
          "Every 30 seconds, summon two Solus Probes that gain +100% (+100% per stack) damage per ally on your team."
      }
    , { name = "Yellow Item Scrap"
      , rarity = Rarity.Boss
      , description = "Does nothing. Prioritized when used with 3D Printers."
      }
    , { name = "Pearl"
      , rarity = Rarity.Boss
      , description = "Increases maximum health by 10% (+10% per stack)."
      }
    , { name = "Mired Urn"
      , rarity = Rarity.Boss
      , description =
          "While in combat, the nearest 1 (+1 per stack) enemies to you within 13m will be 'tethered' to you, dealing 100% damage per second, applying tar, and healing you for 100% of the damage dealt."
      }
    , { name = "Little Disciple"
      , rarity = Rarity.Boss
      , description =
          "Fire a tracking wisp for 300% (+300% per stack) damage. Fires every 1.6 seconds while sprinting. Fire rate increases with movement speed."
      }
    , { name = "Halcyon Seed"
      , rarity = Rarity.Boss
      , description =
          "Summon Aurelionite during the teleporter event. It has 100% (+50% per stack) damage and 100% (+100% per stack) health."
      }
    , { name = "Beads of Fealty"
      , rarity = Rarity.Lunar
      , description = "Seems to do nothing... but..."
      }
    , { name = "Brittle Crown"
      , rarity = Rarity.Lunar
      , description =
          "30% chance on hit to gain 2 (+2 per stack) gold. Scales over time. Lose gold on taking damage equal to 100% (+100% per stack) of the maximum health percentage you lost. "
      }
    , { name = "Corpsebloom"
      , rarity = Rarity.Lunar
      , description =
          "Heal +100% (+100% per stack) more. All healing is applied over time. Can heal for a maximum of 10% (-50% per stack) of your health per second."
      }
    , { name = "Defiant Gouge"
      , rarity = Rarity.Lunar
      , description =
          "Using a Shrine summons enemies (stronger per stack) nearby. Scales over time."
      }
    , { name = "Egocentrism"
      , rarity = Rarity.Lunar
      , description =
          "Every 3 (-50% per stack) seconds, gain an orbiting bomb that detonates on impact for 360% damage, up to a maximum of 3 bombs (+1 per stack). Every 60 seconds, a random item is converted into this item."
      }
    , { name = "Essence of Heresy"
      , rarity = Rarity.Lunar
      , description =
          "Replace your Special Skill with Ruin. Dealing damage adds a stack of Ruin for 10 (+10 per stack) seconds. Activating the skill detonates all Ruin stacks at unlimited range, dealing 300% damage plus 120% damage per stack of Ruin. Recharges after 8 (+8 per stack) seconds. "
      }
    , { name = "Eulogy Zero"
      , rarity = Rarity.Lunar
      , description =
          "Items have a 5% (+5% per stack) chance to become a Lunar item instead."
      }
    , { name = "Focused Convergence"
      , rarity = Rarity.Lunar
      , description =
          "Teleporters charge 30% (+30% per stack) faster, but the size of the Teleporter zone is 50% (-50% per stack) smaller."
      }
    , { name = "Gesture of the Drowned"
      , rarity = Rarity.Lunar
      , description =
          "Reduce Equipment cooldown by 50% (+15% per stack). Forces your Equipment to activate whenever it is off cooldown. "
      }
    , { name = "Hooks of Heresy"
      , rarity = Rarity.Lunar
      , description =
          "Replace your Secondary Skill with Slicing Maelstrom. Charge up a projectile that deals 875% damage per second to nearby enemies, exploding after 3 seconds to deal 700% damage and root enemies for 3 (+3 per stack) seconds. Recharges after 5 (+5 per stack) seconds."
      }
    , { name = "Light Flux Pauldron"
      , rarity = Rarity.Lunar
      , description =
          "Decrease skill cooldowns by 50% (+50% per stack). Decrease attack speed by 50% (+50% per stack)."
      }
    , { name = "Mercurial Rachis"
      , rarity = Rarity.Lunar
      , description =
          "Creates a Ward of Power in a random location nearby that buffs both enemies and allies within 16m (+50% per stack), causing them to deal +50% damage."
      }
    , { name = "Purity"
      , rarity = Rarity.Lunar
      , description =
          "All skill cooldowns are reduced by 2 (+1 per stack) seconds. All random effects are rolled +1 (+1 per stack) times for an unfavorable outcome. "
      }
    , { name = "Shaped Glass"
      , rarity = Rarity.Lunar
      , description =
          "Increase base damage by 100% (+100% per stack). Reduce maximum health by 50% (+50% per stack)."
      }
    , { name = "Stone Flux Pauldron"
      , rarity = Rarity.Lunar
      , description =
          "Increase max health by 100% (+100% per stack). Reduce movement speed by 50% (+50% per stack)."
      }
    , { name = "Strides of Heresy"
      , rarity = Rarity.Lunar
      , description =
          "Replace your Utility Skill with Shadowfade. Fade away, becoming intangible and gaining +30% movement speed. Heal for 18.2% (+18.2% per stack) of your maximum health. Lasts 3 (+3 per stack) seconds."
      }
    , { name = "Transcendence"
      , rarity = Rarity.Lunar
      , description =
          "Convert all but 1 health into regenerating shields. Gain 50% (+25% per stack) maximum health."
      }
    , { name = "Visions of Heresy"
      , rarity = Rarity.Lunar
      , description =
          "Replace your Primary Skill with Hungering Gaze. Fire a flurry of tracking shards that detonate after a delay, dealing 120% base damage. Hold up to 12 charges (+12 per stack) that reload after 2 seconds (+2 per stack)."
      }
    , { name = "Benthic Bloom"
      , rarity = Rarity.Void
      , description =
          "Upgrades 3 (+3 per stack) random items to items of the next higher rarity at the start of each stage. Corrupts all 57 Leaf Clovers."
      }
    , { name = "Encrusted Key"
      , rarity = Rarity.Void
      , description =
          "A hidden cache containing an item (60%/30%/10%) will appear in a random location on each stage. Opening the cache consumes this item. Corrupts all Rusted Keys."
      }
    , { name = "Lost Seer's Lenses"
      , rarity = Rarity.Void
      , description =
          "Your attacks have a 0.5% (+0.5% per stack) chance to instantly kill a non-Boss enemy. Corrupts all Lens-Maker's Glasses."
      }
    , { name = "Lysate Cell"
      , rarity = Rarity.Void
      , description =
          "Add +1 (+1 per stack) charge of your Special skill. Reduces Special skill cooldown by 33%. Corrupts all Fuel Cells."
      }
    , { name = "Needletick"
      , rarity = Rarity.Void
      , description =
          "10% (+10% per stack) chance to collapse an enemy for 400% base damage. Corrupts all Tri-Tip Daggers."
      }
    , { name = "Newly Hatched Zoea"
      , rarity = Rarity.Void
      , description =
          "Every 60 (-50% per stack) seconds, gain a random Void ally. Can have up to 1 (+1 per stack) allies at a time. Corrupts all yellow items."
      }
    , { name = "Plasma Shrimp"
      , rarity = Rarity.Void
      , description =
          "Gain a shield equal to 10% of your maximum health. While you have a shield, hitting an enemy fires a missile that deals 40% (+40% per stack) TOTAL damage. Corrupts all AtG Missile Mk. 1s."
      }
    , { name = "Pluripotent Larva"
      , rarity = Rarity.Void
      , description =
          "Upon death, this item will be consumed and you will return to life with 3 seconds of invulnerability, and all of your items that can be corrupted will be. Corrupts all Dio's Best Friends."
      }
    , { name = "Polylute"
      , rarity = Rarity.Void
      , description =
          "25% chance to fire lightning for 60% TOTAL damage up to 3 (+3 per stack) times. Corrupts all Ukuleles."
      }
    , { name = "Safer Spaces"
      , rarity = Rarity.Void
      , description =
          "Blocks incoming damage once. Recharges after 15 seconds (-10% per stack) Corrupts all Tougher Times."
      }
    , { name = "Singularity Band"
      , rarity = Rarity.Void
      , description =
          "Hits that deal more than 400% damage also fire a black hole that draws enemies within 15m into its center. Lasts 5 seconds before collapsing, dealing 100% (+100% per stack) TOTAL damage. Recharges every 20 seconds. Corrupts all Runald's and Kjaro's Bands."
      }
    , { name = "Tentabauble"
      , rarity = Rarity.Void
      , description =
          "5% (+5% per stack) chance on hit to root enemies for 1s (+1s per stack). Corrupts all Chronobaubles."
      }
    , { name = "Voidsent Flame"
      , rarity = Rarity.Void
      , description =
          "Upon hitting an enemy at full health, spawn a lava pillar in a 12m (+2.4m per stack) radius for 260% (+156% per stack) base damage. Corrupts all Will-o'-the-wisps."
      }
    , { name = "Weeping Fungus"
      , rarity = Rarity.Void
      , description =
          "Heals for 2% (+2% per stack) of your health every second while sprinting. Corrupts all Bustling Fungi."
      }
    , { name = "Blast Shower"
      , rarity = Rarity.Equipment
      , description =
          "Cleanse all negative effects. Includes debuffs, damage over time, and nearby projectiles."
      }
    , { name = "Disposable Missile Launcher"
      , rarity = Rarity.Equipment
      , description = "Fire a swarm of 12 missiles that deal 12x300% damage."
      }
    , { name = "Eccentric Vase"
      , rarity = Rarity.Equipment
      , description =
          "Create a quantum tunnel of up to 1000m in length. Lasts 30 seconds."
      }
    , { name = "Executive Card"
      , rarity = Rarity.Equipment
      , description =
          "Whenever you make a gold purchase, get 10% of the spent gold back. If the purchase is a multishop terminal, the other terminals will remain open."
      }
    , { name = "Foreign Fruit"
      , rarity = Rarity.Equipment
      , description = "Instantly heal for 50% of your maximum health."
      }
    , { name = "Forgive Me Please"
      , rarity = Rarity.Equipment
      , description =
          "Throw a cursed doll out that triggers any On-Kill effects you have every 1 second for 8 seconds."
      }
    , { name = "Fuel Array"
      , rarity = Rarity.Equipment
      , description =
          "Looks like it could power something. EXTREMELY unstable..."
      }
    , { name = "Gnarled Woodsprite"
      , rarity = Rarity.Equipment
      , description =
          "Gain a Woodsprite follower that heals for 1.5% of your maximum health/second. Can be sent to an ally to heal them for 10% of their maximum health."
      }
    , { name = "Goobo Jr."
      , rarity = Rarity.Equipment
      , description =
          "Spawn a gummy clone that has 170% damage and 170% health. Expires in 30 seconds."
      }
    , { name = "Gorag's Opus"
      , rarity = Rarity.Equipment
      , description =
          "All allies enter a frenzy for 7 seconds. Increases movement speed by 50% and attack speed by 100%."
      }
    , { name = "Jade Elephant"
      , rarity = Rarity.Equipment
      , description = "Gain 500 armor for 5 seconds."
      }
    , { name = "Milky Chrysalis"
      , rarity = Rarity.Equipment
      , description =
          "Sprout wings and fly for 15 seconds. Gain +20% movement speed for the duration."
      }
    , { name = "Molotov (6-pack)"
      , rarity = Rarity.Equipment
      , description =
          "Throw 6 molotov cocktails that ignites enemies for 500% base damage. Each molotov leaves a burning area for 200% damage per second."
      }
    , { name = "Ocular HUD"
      , rarity = Rarity.Equipment
      , description = "Gain +100% Critical Strike Chance for 8 seconds."
      }
    , { name = "Preon Accumulator"
      , rarity = Rarity.Equipment
      , description =
          "Fires preon tendrils, zapping enemies within 35m for up to 600% damage/second. On contact, detonate in an enormous 20m explosion for 4000% damage."
      }
    , { name = "Primordial Cube"
      , rarity = Rarity.Equipment
      , description =
          "Fire a black hole that draws enemies within 30m into its center. Lasts 10 seconds "
      }
    , { name = "Radar Scanner"
      , rarity = Rarity.Equipment
      , description = "Reveal all interactables within 500m for 10 seconds."
      }
    , { name = "Recycler"
      , rarity = Rarity.Equipment
      , description =
          "Transform an Item or Equipment into a different one. Can only be converted into the same tier one time."
      }
    , { name = "Remote Caffeinator"
      , rarity = Rarity.Equipment
      , description =
          "Request an Eclipse Zero Vending Machine from the UES Safe Travels. Delivery guaranteed in 5 seconds, dealing 2000% damage. Heal up to 3 targets for 25% of their maximum health."
      }
    , { name = "Royal Capacitor"
      , rarity = Rarity.Equipment
      , description =
          "Call down a lightning strike on a targeted monster, dealing 3000% damage and stunning nearby monsters. "
      }
    , { name = "Sawmerang"
      , rarity = Rarity.Equipment
      , description =
          "Throw three large saw blades that slice through enemies for 3x400% damage. Also deals an additional 3x100% damage per second while bleeding enemies. Can strike enemies again on the way back."
      }
    , { name = "Super Massive Leech"
      , rarity = Rarity.Equipment
      , description = "Heal for 20% of the damage you deal. Lasts 8 seconds."
      }
    , { name = "The Back-up"
      , rarity = Rarity.Equipment
      , description = "Call 4 Strike Drones to fight for you. Lasts 25 seconds."
      }
    , { name = "The Crowdfunder"
      , rarity = Rarity.Equipment
      , description =
          "Fires a continuous barrage that deals 100% damage per bullet. Costs \$1 per bullet. Cost increases over time."
      }
    , { name = "Trophy Hunter's Tricorn"
      , rarity = Rarity.Equipment
      , description =
          "Execute any enemy capable of spawning a unique reward, and it will drop that item. Equipment is consumed on use."
      }
    , { name = "Trophy Hunter's Tricorn (Consumed)"
      , rarity = Rarity.Equipment
      , description = "Looks kinda cool, but that's about it."
      }
    , { name = "Volcanic Egg"
      , rarity = Rarity.Equipment
      , description =
          "Turn into a draconic fireball for 5 seconds. Deal 500% damage on impact. Detonates at the end for 800% damage. "
      }
    , { name = "Effigy of Grief"
      , rarity = Rarity.Lunar
      , description =
          "ALL characters within are slowed by 50% and have their armor reduced by 20. Can place up to 5."
      }
    , { name = "Glowing Meteorite"
      , rarity = Rarity.Lunar
      , description =
          "Rain meteors from the sky, damaging ALL characters for 600% damage per blast. Lasts 20 seconds."
      }
    , { name = "Helfire Tincture"
      , rarity = Rarity.Lunar
      , description =
          "Ignite ALL characters within 15m for 12s. Deal 5% of your maximum health/second as burning as damage. The burn is 0.5x stronger on yourself, 0.25x stronger on allies, and 24x stronger on enemies."
      }
    , { name = "Spinel Tonic"
      , rarity = Rarity.Lunar
      , description =
          "Drink the Tonic, gaining a boost for 20 seconds. Increases damage by +100%. Increases attack speed by +70%. Increases armor by +20. Increases maximum health by +50%. Increases passive health regeneration by +300%. Increases movespeed by +30%. When the Tonic wears off, you have a 20% chance to gain a Tonic Affliction, reducing all of your stats by -5% (-5% per stack)."
      }
    ]

in Prelude.List.map BasicItem Item add_item_metadata items