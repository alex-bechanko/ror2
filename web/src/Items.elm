module Items exposing (Details, Rarity(..), background, backgroundClass, defaultItemOrder, image, items)


type alias Details =
    { displayName : String, description : String, rarity : Rarity }


type Rarity
    = Common
    | Rare
    | Legendary
    | Boss
    | Lunar
    | Void
    | Equipment


defaultItemOrder : Details -> Details -> Order
defaultItemOrder a b =
    let
        toInt : Rarity -> Int
        toInt r =
            case r of
                Common ->
                    0

                Rare ->
                    1

                Legendary ->
                    2

                Boss ->
                    3

                Lunar ->
                    4

                Void ->
                    5

                Equipment ->
                    6
    in
    compare (toInt a.rarity) (toInt b.rarity)


image : Details -> String
image item =
    "/images/items/" ++ item.displayName ++ ".png"


background : Details -> String
background item =
    case item.rarity of
        Common ->
            "/images/backgrounds/common.png"

        Rare ->
            "/images/backgrounds/rare.png"

        Legendary ->
            "/images/backgrounds/legendary.png"

        Boss ->
            "/images/backgrounds/boss.png"

        Lunar ->
            "/images/backgrounds/lunar.png"

        Void ->
            "/images/backgrounds/void.png"

        Equipment ->
            "/images/backgrounds/equipment.png"


backgroundClass : Details -> String
backgroundClass item =
    case item.rarity of
        Common ->
            "bg-rarity-common"

        Rare ->
            "bg-rarity-rare"

        Legendary ->
            "bg-rarity-legendary"

        Boss ->
            "bg-rarity-boss"

        Lunar ->
            "bg-rarity-lunar"

        Void ->
            "bg-rarity-void"

        Equipment ->
            "bg-rarity-equipment"


items : List Details
items =
    [ { displayName = "Repulsion Armor Plate"
      , rarity = Common
      , description = "Reduce all incoming damage by 5 (+5 per stack). Cannot be reduced below 1."
      }
    , { displayName = "Mocha"
      , rarity = Common
      , description = "Increases attack speed by 7.5% (+7.5 per stack) and movement speed by 7% (+7% per stack). "
      }
    , { displayName = "Topaz Broach"
      , rarity = Common
      , description = "Gain a temporary barrier on kill for 15 health (+15 per stack)."
      }
    , { displayName = "Tougher Times"
      , rarity = Common
      , description = "15% (+15% per stack) chance to block incoming damage. Unaffected by luck."
      }
    , { displayName = "Tri-Tip Dagger"
      , rarity = Common
      , description = "10% (+10% per stack) chance to bleed an enemy for 240% base damage."
      }
    , { displayName = "Armor-Piercing Rounds"
      , rarity = Common
      , description = "Deal an additional 20% damage (+20% per stack) bosses."
      }
    , { displayName = "Lens-Maker's Glasses"
      , rarity = Common
      , description = "Your attacks have a 10% (+10% per stack) chance to 'Critically Strike', dealing double damage."
      }
    , { displayName = "Crowbar"
      , rarity = Common
      , description = "Deal +75% (+75% per stack) damage to enemies above 90% health."
      }
    , { displayName = "Bundle of Fireworks"
      , rarity = Common
      , description = "Activating an interactable launches 8 (+4 per stack) fireworks that deal 300% base damage."
      }
    , { displayName = "Bison Steak"
      , rarity = Common
      , description = "Increases maximum health by 25 (+25 per stack)."
      }
    , { displayName = "Delicate Watch"
      , rarity = Common
      , description = "Increase damage by 20% (+20% per stack). Taking damage to below 25% health breaks this item."
      }
    , { displayName = "Roll of Pennies"
      , rarity = Common
      , description = "Gain 3 (+3 per stack) gold on taking damage from an enemy. Scales over time."
      }
    , { displayName = "Cautious Slug"
      , rarity = Common
      , description = "Increases base health regeneration by +3 hp/s (+3 hp/s per stack) while outside of combat."
      }
    , { displayName = "Power Elixir"
      , rarity = Common
      , description = "Taking damage to below 25% health consumes this item, healing you for 75% of maximum health."
      }
    , { displayName = "Paul's Goat Hoof"
      , rarity = Common
      , description = "Increases movement speed by 14% (+14% per stack)."
      }
    , { displayName = "Gasoline"
      , rarity = Common
      , description = "Killing an enemy ignites all enemies within 12m (+4m per stack) for 150% base damage. Additionally, enemies burn for 150% (+75% per stack) base damage."
      }
    , { displayName = "Medkit"
      , rarity = Common
      , description = "2 seconds after getting hurt, heal for 20 plus an additional 5% (+5% per stack) of maximum health."
      }
    , { displayName = "Bustling Fungus"
      , rarity = Common
      , description = "After standing still for 1 second, create a zone that heals for 4.5% (+2.25% per stack) of your health every second to all allies within 3m (+1.5m per stack)."
      }
    , { displayName = "Focus Crystal"
      , rarity = Common
      , description = "Increase damage to enemies within 13m by 20% (+20% per stack)."
      }
    , { displayName = "Oddly-Shaped Opal"
      , rarity = Common
      , description = "Increase armor by 100 (+100 per stack) while out of danger."
      }
    , { displayName = "Personal Shield Generator"
      , rarity = Common
      , description = "Gain a shield equal to 8% (+8% per stack) of your maximum health. Recharges outside of danger."
      }
    , { displayName = "White Item Scrap"
      , rarity = Common
      , description = "Does nothing. Prioritized when used with 3D Printers."
      }
    , { displayName = "Backup Magazine"
      , rarity = Common
      , description = "Add +1 (+1 per stack) charge of your Secondary skill."
      }
    , { displayName = "Energy Drink"
      , rarity = Common
      , description = "Sprint speed is improved by 25% (+25% per stack)."
      }
    , { displayName = "Sticky Bomb"
      , rarity = Common
      , description = "5% (+5% per stack) chance on hit to attach a bomb to an enemy, detonating for 180% TOTAL damage."
      }
    , { displayName = "Stun Grenade"
      , rarity = Common
      , description = "5% (+5% on stack) chance on hit to stun enemies for 2 seconds."
      }
    , { displayName = "Soldier's Syringe"
      , rarity = Common
      , description = "Increases attack speed by 15% (+15% per stack)."
      }
    , { displayName = "Monster Tooth"
      , rarity = Common
      , description = "Killing an enemy spawns a healing orb that heals for 8 plus an additional 2% (+2% per stack) of maximum health."
      }
    , { displayName = "Rusted Key"
      , rarity = Common
      , description = "A hidden cache containing an item (80%/20%) will appear in a random location on each stage. Opening the cache consumes this item."
      }
    , { displayName = "Warbanner"
      , rarity = Common
      , description = "On level up or starting the Teleporter event, drop a banner that strengthens all allies within 16m (+8m per stack). Raise attack and movement speed by 30%."
      }
    , { displayName = "Predatory Instincts"
      , rarity = Rare
      , description = "Gain 5% critical chance. Critical strikes increase attack speed by 12%. Maximum cap of 36% (+24% per stack) attack speed."
      }
    , { displayName = "Bandolier"
      , rarity = Rare
      , description = "18% (+10% per stack) chance on kill to drop an ammo pack that resets all skill cooldowns."
      }
    , { displayName = "Ghor's Tome"
      , rarity = Rare
      , description = "4% (+4% on stack) chance on kill to drop a treasure worth $25. Scales over time."
      }
    , { displayName = "Ukulele"
      , rarity = Rare
      , description = "25% chance to fire chain lightning for 80% TOTAL damage on up to 3 (+2 per stack) targets within 20m (+2m per stack)."
      }
    , { displayName = "Death Mark"
      , rarity = Rare
      , description = "Enemies with 4 or more debuffs are marked for death, increasing damage taken by 50% from all sources for 7 (+7 per stack) seconds."
      }
    , { displayName = "War Horn"
      , rarity = Rare
      , description = "Activating your Equipment gives you +70% attack speed for 8s (+4s per stack)."
      }
    , { displayName = "Fuel Cell"
      , rarity = Rare
      , description = "Hold an additional equipment charge (+1 per stack). Reduce equipment cooldown by 15% (+15% per stack)."
      }
    , { displayName = "Old Guillotine"
      , rarity = Rare
      , description = "Instantly kill Elite monsters below 13% (+13% per stack) health."
      }
    , { displayName = "Will-o'-the-wisp"
      , rarity = Rare
      , description = "On killing an enemy, spawn a lava pillar in a 12m (+2.4m per stack) radius for 350% (+280% per stack) base damage."
      }
    , { displayName = "Hopoo Feather"
      , rarity = Rare
      , description = "Gain +1 (+1 per stack) maximum jump count."
      }
    , { displayName = "Kjaro's Band"
      , rarity = Rare
      , description = "Hits that deal more than 400% damage also blasts enemies with a runic flame tornado, dealing 300% (+300% per stack) TOTAL damage over time. Recharges every 10 seconds."
      }
    , { displayName = "Shipping Request Form"
      , rarity = Rare
      , description = "A delivery containing 2 items (79%/20%/1%) will appear in a random location on each stage. (Increases rarity chances of the items per stack)."
      }
    , { displayName = "Harvester's Scythe"
      , rarity = Rare
      , description = "Gain 5% critical chance. Critical strikes heal for 8 (+4 per stack) health."
      }
    , { displayName = "Runald's Band"
      , rarity = Rare
      , description = "Hits that deal more than 400% damage also blasts enemies with a runic ice blast, slowing them by 80% for 3s (+3s per stack) and dealing 250% (+250% per stack) TOTAL damage. Recharges every 10 seconds."
      }
    , { displayName = "Infusion"
      , rarity = Rare
      , description = "Killing an enemy increases your health permanently by 1 (+1 per stack), up to a maximum of 100 (+100 per stack) health."
      }
    , { displayName = "Wax Quail"
      , rarity = Rare
      , description = "Jumping while sprinting boosts you forward by 10m (+10m per stack)."
      }
    , { displayName = "AtG Missile Mk. 1"
      , rarity = Rare
      , description = "10% chance to fire a missile that deals 300% (+300% per stack) TOTAL damage."
      }
    , { displayName = "Hunter's Harpoon"
      , rarity = Rare
      , description = "Killing an enemy increases movement speed by 125%, fading over 1 (+0.5 per stack) seconds."
      }
    , { displayName = "Old War Stealthsuit"
      , rarity = Rare
      , description = "Falling below 25% health causes you to gain 40% movement speed and invisibility for 5s. Recharges every 30 seconds (-50% per stack)."
      }
    , { displayName = "Shuriken"
      , rarity = Rare
      , description = "Activating your Primary skill also throws a shuriken that deals 400% (+100% per stack) base damage. You can hold up to 3 (+1 per stack) shurikens which all reload over 10 seconds."
      }
    , { displayName = "Regenerating Scrap"
      , rarity = Rare
      , description = "Does nothing. Prioritized when used with Uncommon 3D Printers. At the start of each stage, it regenerates."
      }
    , { displayName = "Green Item Scrap"
      , rarity = Rare
      , description = "Does nothing. Prioritized when used with 3D Printers."
      }
    , { displayName = "Leeching Seed"
      , rarity = Rare
      , description = "Dealing damage heals you for 1 (+1 per stack) health."
      }
    , { displayName = "Chronobauble"
      , rarity = Rare
      , description = "Slow enemies on hit for -60% movement speed for 2s (+2s per stack)."
      }
    , { displayName = "Rose Buckler"
      , rarity = Rare
      , description = "Increase armor by 30 (+30 per stack) while sprinting."
      }
    , { displayName = "Red Whip"
      , rarity = Rare
      , description = "Leaving combat boosts your movement speed by 30% (+30% per stack)."
      }
    , { displayName = "Squid Polyp"
      , rarity = Rare
      , description = "Activating an interactable summons a Squid Turret that attacks nearby enemies at 100% (+100% per stack) attack speed. Lasts 30 seconds."
      }
    , { displayName = "Ignition Tank"
      , rarity = Rare
      , description = "Ignite effects deal +300% (+300% per stack) more damage over time."
      }
    , { displayName = "Lepton Daisy"
      , rarity = Rare
      , description = "Release a healing nova during the Teleporter event, healing all nearby allies for 50% of their maximum health. Occurs 1 (+1 per stack) times."
      }
    , { displayName = "Razorwire"
      , rarity = Rare
      , description = "Getting hit causes you to explode in a burst of razors, dealing 160% damage. Hits up to 5 (+2 per stack) targets in a 25m (+10m per stack) radius"
      }
    , { displayName = "Berzerker's Pauldron"
      , rarity = Rare
      , description = "Killing 4 enemies within 1 second sends you into a frenzy for 6s (+4s per stack). Increases movement speed by 50% and attack speed by 100%."
      }
    , { displayName = "Alien Head"
      , rarity = Legendary
      , description = "Reduce skill cooldowns by 25% (+25% per stack)."
      }
    , { displayName = "Shattering Justice"
      , rarity = Legendary
      , description = "After hitting an enemy 5 times, reduce their armor by 60 for 8 (+8 per stack) seconds."
      }
    , { displayName = "Aegis"
      , rarity = Legendary
      , description = "Healing past full grants you a temporary barrier for 50% (+50% per stack) of the amount you healed."
      }
    , { displayName = "Brilliant Behemoth"
      , rarity = Legendary
      , description = "All your attacks explode in a 4m (+2.5m per stack) radius for a bonus 60% TOTAL damage to nearby enemies."
      }
    , { displayName = "Sentient Meat Hook"
      , rarity = Legendary
      , description = "20% (+20% per stack) chance on hit to fire homing hooks at up to 10 (+5 per stack) enemies for 100% TOTAL damage."
      }
    , { displayName = "Defensive Microbots"
      , rarity = Legendary
      , description = "Shoot down 1 (+1 per stack) projectiles within 20m every 0.5 seconds. Recharge rate scales with attack speed."
      }
    , { displayName = "57 Leaf Clover"
      , rarity = Legendary
      , description = "All random effects are rolled +1 (+1 per stack) times for a favorable outcome."
      }
    , { displayName = "Laser Scope"
      , rarity = Legendary
      , description = "Critical Strikes deal an additional 100% damage (+100% per stack)."
      }
    , { displayName = "Ceremonial Dagger"
      , rarity = Legendary
      , description = "Killing an enemy fires out 3 homing daggers that deal 150% (+150% per stack) base damage."
      }
    , { displayName = "Spare Drone Parts"
      , rarity = Legendary
      , description = "Gain Col. Droneman. Drones gain +50% (+50% per stack) attack speed and cooldown reduction. Drones gain 10% chance to fire a missile on hit, dealing 300% TOTAL damage. Drones gain an automatic chain gun that deals 6x100% damage, bouncing to 2 enemies."
      }
    , { displayName = "Dio's Best Friend"
      , rarity = Legendary
      , description = "Upon death, this item will be consumed and you will return to life with 3 seconds of invulnerability."
      }
    , { displayName = "H3AD-5T v2"
      , rarity = Legendary
      , description = "Increase jump height. Creates a 5m-100m radius kinetic explosion on hitting the ground, dealing 1000%-10000% base damage that scales up with fall distance. Recharges in 10 (-50% per stack) seconds."
      }
    , { displayName = "Happiest Mask"
      , rarity = Legendary
      , description = "Killing enemies has a 7% chance to spawn a ghost of the killed enemy with 1500% damage. Lasts 30s (+30s per stack)."
      }
    , { displayName = "Wake of Vultures"
      , rarity = Legendary
      , description = "Gain the power of any killed elite monster for 8s (+5s per stack)."
      }
    , { displayName = "Frost Relic"
      , rarity = Legendary
      , description = "Killing an enemy surrounds you with an ice storm that deals 1200% damage per second and slows enemies by 80% for 1.5s. The storm grows with every kill, increasing its radius by 2m. Stacks up to 18m (+12m per stack)."
      }
    , { displayName = "Ben's Raincoat"
      , rarity = Legendary
      , description = "Whenever you would receive a debuff, prevent it. Increases maximum health by 100 (+100 per stack)."
      }
    , { displayName = "Rejuvenation Rack"
      , rarity = Legendary
      , description = "Heal +100% (+100% per stack) more."
      }
    , { displayName = "Brainstalks"
      , rarity = Legendary
      , description = "Upon killing an elite monster, enter a frenzy for 4s (+4s per stack) where skills have 0.5s cooldowns."
      }
    , { displayName = "Resonance Disk"
      , rarity = Legendary
      , description = "Killing 4 enemies in 7 seconds charges the Resonance Disc. The disc launches itself toward a target for 300% base damage (+300% per stack), piercing all enemies it doesn't kill, and then explodes for 1000% base damage (+1000% per stack). Returns to the user, striking all enemies along the way for 300% base damage (+300% per stack)."
      }
    , { displayName = "Pocket I.C.B.M."
      , rarity = Legendary
      , description = "All missile items and equipment fire an additional 2 missiles. Increase missile damage by 0% (+50% per stack)"
      }
    , { displayName = "N'kuhana's Opinion"
      , rarity = Legendary
      , description = "Store 100% (+100% per stack) of healing as Soul Energy. After your Soul Energy reaches 10% of your maximum health, fire a skull that deals 250% of your Soul Energy as damage."
      }
    , { displayName = "Symbiotic Scorpion"
      , rarity = Legendary
      , description = "On hit reduce armor by 2 (+2 per stack) permanently."
      }
    , { displayName = "Interstellar Desk Plant"
      , rarity = Legendary
      , description = "On kill, plant a healing fruit seed that grows into a plant after 5 seconds. The plant heals for 5% of maximum health every 0.5 second to all allies within 10m (+5.0m per stack). Lasts 10 seconds. "
      }
    , { displayName = "Bottled Chaos"
      , rarity = Legendary
      , description = "Trigger a random equipment effect 1 (+1 per stack) time(s)."
      }
    , { displayName = "Red Item Scrap"
      , rarity = Legendary
      , description = "Does nothing. Prioritized when used with 3D Printers."
      }
    , { displayName = "Unstable Tesla Coil"
      , rarity = Legendary
      , description = "Fire out lightning that hits 3 (+2 per stack) enemies for 200% base damage every 0.5s. The Tesla Coil switches off every 10 seconds."
      }
    , { displayName = "Soulbound Catalyst"
      , rarity = Legendary
      , description = "Kills reduce equipment cooldown by 4s (+2s per stack)."
      }
    , { displayName = "Hardlight Afterburner"
      , rarity = Legendary
      , description = "Add +2 (+2 per stack) charges of your Utility skill. Reduces Utility skill cooldown by 33%."
      }
    , { displayName = "Artifact Key"
      , rarity = Boss
      , description = "A stone shard with immense power."
      }
    , { displayName = "Queen's Gland"
      , rarity = Boss
      , description = "Every 30 seconds, summon a Beetle Guard with bonus 300% damage and 100% health. Can have up to 1 (+1 per stack) Guards at a time."
      }
    , { displayName = "Shatterspleen"
      , rarity = Boss
      , description = "Gain 5% critical chance. Critical Strikes bleed enemies for 240% base damage. Bleeding enemies explode on death for 400% (+400% per stack) damage, plus an additional 15% (+15% per stack) of their maximum health."
      }
    , { displayName = "Molten Perforator"
      , rarity = Boss
      , description = "10% chance on hit to call forth 3 magma balls from an enemy, dealing 300% (+300% per stack) damage each."
      }
    , { displayName = "Titanic Knurl"
      , rarity = Boss
      , description = "Increase maximum health by 40 (+40 per stack) and base health regeneration by +1.6 hp/s (+1.6 hp/s per stack)."
      }
    , { displayName = "Charged Perforator"
      , rarity = Boss
      , description = "10% chance on hit to down a lightning strike, dealing 500% (+500% per stack) damage."
      }
    , { displayName = "Defense Nucleus"
      , rarity = Boss
      , description = "Killing elite monsters spawns an Alpha Construct. Limited to 4 (+4 per stack)."
      }
    , { displayName = "Genesis Loop"
      , rarity = Boss
      , description = "Falling below 25% health causes you to explode, dealing 6000% base damage. Recharges every 30 / (2 +1 per stack) seconds."
      }
    , { displayName = "Planula"
      , rarity = Boss
      , description = "Heal from incoming damage for 15 (+15 per stack)."
      }
    , { displayName = "Irradiant Pearl"
      , rarity = Boss
      , description = "Increases ALL stats by 10% (+10% per stack)."
      }
    , { displayName = "Empathy Cores"
      , rarity = Boss
      , description = "Every 30 seconds, summon two Solus Probes that gain +100% (+100% per stack) damage per ally on your team."
      }
    , { displayName = "Yellow Item Scrap"
      , rarity = Boss
      , description = "Does nothing. Prioritized when used with 3D Printers."
      }
    , { displayName = "Pearl"
      , rarity = Boss
      , description = "Increases maximum health by 10% (+10% per stack)."
      }
    , { displayName = "Mired Urn"
      , rarity = Boss
      , description = "While in combat, the nearest 1 (+1 per stack) enemies to you within 13m will be 'tethered' to you, dealing 100% damage per second, applying tar, and healing you for 100% of the damage dealt."
      }
    , { displayName = "Little Disciple"
      , rarity = Boss
      , description = "Fire a tracking wisp for 300% (+300% per stack) damage. Fires every 1.6 seconds while sprinting. Fire rate increases with movement speed."
      }
    , { displayName = "Halcyon Seed"
      , rarity = Boss
      , description = "Summon Aurelionite during the teleporter event. It has 100% (+50% per stack) damage and 100% (+100% per stack) health."
      }
    , { displayName = "Beads of Fealty"
      , rarity = Lunar
      , description = "Seems to do nothing... but..."
      }
    , { displayName = "Brittle Crown"
      , rarity = Lunar
      , description = "30% chance on hit to gain 2 (+2 per stack) gold. Scales over time. Lose gold on taking damage equal to 100% (+100% per stack) of the maximum health percentage you lost. "
      }
    , { displayName = "Corpsebloom"
      , rarity = Lunar
      , description = "Heal +100% (+100% per stack) more. All healing is applied over time. Can heal for a maximum of 10% (-50% per stack) of your health per second."
      }
    , { displayName = "Defiant Gouge"
      , rarity = Lunar
      , description = "Using a Shrine summons enemies (stronger per stack) nearby. Scales over time."
      }
    , { displayName = "Egocentrism"
      , rarity = Lunar
      , description = "Every 3 (-50% per stack) seconds, gain an orbiting bomb that detonates on impact for 360% damage, up to a maximum of 3 bombs (+1 per stack). Every 60 seconds, a random item is converted into this item."
      }
    , { displayName = "Essence of Heresy"
      , rarity = Lunar
      , description = "Replace your Special Skill with Ruin. Dealing damage adds a stack of Ruin for 10 (+10 per stack) seconds. Activating the skill detonates all Ruin stacks at unlimited range, dealing 300% damage plus 120% damage per stack of Ruin. Recharges after 8 (+8 per stack) seconds. "
      }
    , { displayName = "Eulogy Zero"
      , rarity = Lunar
      , description = "Items have a 5% (+5% per stack) chance to become a Lunar item instead."
      }
    , { displayName = "Focused Convergence"
      , rarity = Lunar
      , description = "Teleporters charge 30% (+30% per stack) faster, but the size of the Teleporter zone is 50% (-50% per stack) smaller."
      }
    , { displayName = "Gesture of the Drowned"
      , rarity = Lunar
      , description = "Reduce Equipment cooldown by 50% (+15% per stack). Forces your Equipment to activate whenever it is off cooldown. "
      }
    , { displayName = "Hooks of Heresy"
      , rarity = Lunar
      , description = "Replace your Secondary Skill with Slicing Maelstrom. Charge up a projectile that deals 875% damage per second to nearby enemies, exploding after 3 seconds to deal 700% damage and root enemies for 3 (+3 per stack) seconds. Recharges after 5 (+5 per stack) seconds."
      }
    , { displayName = "Light Flux Pauldron"
      , rarity = Lunar
      , description = "Decrease skill cooldowns by 50% (+50% per stack). Decrease attack speed by 50% (+50% per stack)."
      }
    , { displayName = "Mercurial Rachis"
      , rarity = Lunar
      , description = "Creates a Ward of Power in a random location nearby that buffs both enemies and allies within 16m (+50% per stack), causing them to deal +50% damage."
      }
    , { displayName = "Purity"
      , rarity = Lunar
      , description = "All skill cooldowns are reduced by 2 (+1 per stack) seconds. All random effects are rolled +1 (+1 per stack) times for an unfavorable outcome. "
      }
    , { displayName = "Shaped Glass"
      , rarity = Lunar
      , description = "Increase base damage by 100% (+100% per stack). Reduce maximum health by 50% (+50% per stack)."
      }
    , { displayName = "Stone Flux Pauldron"
      , rarity = Lunar
      , description = "Increase max health by 100% (+100% per stack). Reduce movement speed by 50% (+50% per stack)."
      }
    , { displayName = "Strides of Heresy"
      , rarity = Lunar
      , description = "Replace your Utility Skill with Shadowfade. Fade away, becoming intangible and gaining +30% movement speed. Heal for 18.2% (+18.2% per stack) of your maximum health. Lasts 3 (+3 per stack) seconds."
      }
    , { displayName = "Transcendence"
      , rarity = Lunar
      , description = "Convert all but 1 health into regenerating shields. Gain 50% (+25% per stack) maximum health."
      }
    , { displayName = "Visions of Heresy"
      , rarity = Lunar
      , description = "Replace your Primary Skill with Hungering Gaze. Fire a flurry of tracking shards that detonate after a delay, dealing 120% base damage. Hold up to 12 charges (+12 per stack) that reload after 2 seconds (+2 per stack)."
      }
    , { displayName = "Benthic Bloom"
      , rarity = Void
      , description = "Upgrades 3 (+3 per stack) random items to items of the next higher rarity at the start of each stage. Corrupts all 57 Leaf Clovers."
      }
    , { displayName = "Encrusted Key"
      , rarity = Void
      , description = "A hidden cache containing an item (60%/30%/10%) will appear in a random location on each stage. Opening the cache consumes this item. Corrupts all Rusted Keys."
      }
    , { displayName = "Lost Seer's Lenses"
      , rarity = Void
      , description = "Your attacks have a 0.5% (+0.5% per stack) chance to instantly kill a non-Boss enemy. Corrupts all Lens-Maker's Glasses."
      }
    , { displayName = "Lysate Cell"
      , rarity = Void
      , description = "Add +1 (+1 per stack) charge of your Special skill. Reduces Special skill cooldown by 33%. Corrupts all Fuel Cells."
      }
    , { displayName = "Needletick"
      , rarity = Void
      , description = "10% (+10% per stack) chance to collapse an enemy for 400% base damage. Corrupts all Tri-Tip Daggers."
      }
    , { displayName = "Newly Hatched Zoea"
      , rarity = Void
      , description = "Every 60 (-50% per stack) seconds, gain a random Void ally. Can have up to 1 (+1 per stack) allies at a time. Corrupts all yellow items."
      }
    , { displayName = "Plasma Shrimp"
      , rarity = Void
      , description = "Gain a shield equal to 10% of your maximum health. While you have a shield, hitting an enemy fires a missile that deals 40% (+40% per stack) TOTAL damage. Corrupts all AtG Missile Mk. 1s."
      }
    , { displayName = "Pluripotent Larva"
      , rarity = Void
      , description = "Upon death, this item will be consumed and you will return to life with 3 seconds of invulnerability, and all of your items that can be corrupted will be. Corrupts all Dio's Best Friends."
      }
    , { displayName = "Polylute"
      , rarity = Void
      , description = "25% chance to fire lightning for 60% TOTAL damage up to 3 (+3 per stack) times. Corrupts all Ukuleles."
      }
    , { displayName = "Safer Spaces"
      , rarity = Void
      , description = "Blocks incoming damage once. Recharges after 15 seconds (-10% per stack) Corrupts all Tougher Times."
      }
    , { displayName = "Singularity Band"
      , rarity = Void
      , description = "Hits that deal more than 400% damage also fire a black hole that draws enemies within 15m into its center. Lasts 5 seconds before collapsing, dealing 100% (+100% per stack) TOTAL damage. Recharges every 20 seconds. Corrupts all Runald's and Kjaro's Bands."
      }
    , { displayName = "Tentabauble"
      , rarity = Void
      , description = "5% (+5% per stack) chance on hit to root enemies for 1s (+1s per stack). Corrupts all Chronobaubles."
      }
    , { displayName = "Voidsent Flame"
      , rarity = Void
      , description = "Upon hitting an enemy at full health, spawn a lava pillar in a 12m (+2.4m per stack) radius for 260% (+156% per stack) base damage. Corrupts all Will-o'-the-wisps."
      }
    , { displayName = "Weeping Fungus"
      , rarity = Void
      , description = "Heals for 2% (+2% per stack) of your health every second while sprinting. Corrupts all Bustling Fungi."
      }
    , { displayName = "Blast Shower"
      , rarity = Equipment
      , description = "Cleanse all negative effects. Includes debuffs, damage over time, and nearby projectiles."
      }
    , { displayName = "Disposable Missile Launcher"
      , rarity = Equipment
      , description = "Fire a swarm of 12 missiles that deal 12x300% damage."
      }
    , { displayName = "Eccentric Vase"
      , rarity = Equipment
      , description = "Create a quantum tunnel of up to 1000m in length. Lasts 30 seconds."
      }
    , { displayName = "Executive Card"
      , rarity = Equipment
      , description = "Whenever you make a gold purchase, get 10% of the spent gold back. If the purchase is a multishop terminal, the other terminals will remain open."
      }
    , { displayName = "Foreign Fruit"
      , rarity = Equipment
      , description = "Instantly heal for 50% of your maximum health."
      }
    , { displayName = "Forgive Me Please"
      , rarity = Equipment
      , description = "Throw a cursed doll out that triggers any On-Kill effects you have every 1 second for 8 seconds."
      }
    , { displayName = "Fuel Array"
      , rarity = Equipment
      , description = "Looks like it could power something. EXTREMELY unstable..."
      }
    , { displayName = "Gnarled Woodsprite"
      , rarity = Equipment
      , description = "Gain a Woodsprite follower that heals for 1.5% of your maximum health/second. Can be sent to an ally to heal them for 10% of their maximum health."
      }
    , { displayName = "Goobo Jr."
      , rarity = Equipment
      , description = "Spawn a gummy clone that has 170% damage and 170% health. Expires in 30 seconds."
      }
    , { displayName = "Gorag's Opus"
      , rarity = Equipment
      , description = "All allies enter a frenzy for 7 seconds. Increases movement speed by 50% and attack speed by 100%."
      }
    , { displayName = "Jade Elephant"
      , rarity = Equipment
      , description = "Gain 500 armor for 5 seconds."
      }
    , { displayName = "Milky Chrysalis"
      , rarity = Equipment
      , description = "Sprout wings and fly for 15 seconds. Gain +20% movement speed for the duration."
      }
    , { displayName = "Molotov (6-pack)"
      , rarity = Equipment
      , description = "Throw 6 molotov cocktails that ignites enemies for 500% base damage. Each molotov leaves a burning area for 200% damage per second."
      }
    , { displayName = "Ocular HUD"
      , rarity = Equipment
      , description = "Gain +100% Critical Strike Chance for 8 seconds."
      }
    , { displayName = "Preon Accumulator"
      , rarity = Equipment
      , description = "Fires preon tendrils, zapping enemies within 35m for up to 600% damage/second. On contact, detonate in an enormous 20m explosion for 4000% damage."
      }
    , { displayName = "Primordial Cube"
      , rarity = Equipment
      , description = "Fire a black hole that draws enemies within 30m into its center. Lasts 10 seconds "
      }
    , { displayName = "Radar Scanner"
      , rarity = Equipment
      , description = "Reveal all interactables within 500m for 10 seconds."
      }
    , { displayName = "Recycler"
      , rarity = Equipment
      , description = "Transform an Item or Equipment into a different one. Can only be converted into the same tier one time."
      }
    , { displayName = "Remote Caffeinator"
      , rarity = Equipment
      , description = "Request an Eclipse Zero Vending Machine from the UES Safe Travels. Delivery guaranteed in 5 seconds, dealing 2000% damage. Heal up to 3 targets for 25% of their maximum health."
      }
    , { displayName = "Royal Capacitor"
      , rarity = Equipment
      , description = "Call down a lightning strike on a targeted monster, dealing 3000% damage and stunning nearby monsters. "
      }
    , { displayName = "Sawmerang"
      , rarity = Equipment
      , description = "Throw three large saw blades that slice through enemies for 3x400% damage. Also deals an additional 3x100% damage per second while bleeding enemies. Can strike enemies again on the way back."
      }
    , { displayName = "Super Massive Leech"
      , rarity = Equipment
      , description = "Heal for 20% of the damage you deal. Lasts 8 seconds."
      }
    , { displayName = "The Back-up"
      , rarity = Equipment
      , description = "Call 4 Strike Drones to fight for you. Lasts 25 seconds."
      }
    , { displayName = "The Crowdfunder"
      , rarity = Equipment
      , description = "Fires a continuous barrage that deals 100% damage per bullet. Costs $1 per bullet. Cost increases over time."
      }
    , { displayName = "Trophy Hunter's Tricorn"
      , rarity = Equipment
      , description = "Execute any enemy capable of spawning a unique reward, and it will drop that item. Equipment is consumed on use."
      }
    , { displayName = "Trophy Hunter's Tricorn (Consumed)"
      , rarity = Equipment
      , description = "Looks kinda cool, but that's about it."
      }
    , { displayName = "Volcanic Egg"
      , rarity = Equipment
      , description = "Turn into a draconic fireball for 5 seconds. Deal 500% damage on impact. Detonates at the end for 800% damage. "
      }
    , { displayName = "Effigy of Grief"
      , rarity = Lunar
      , description = "ALL characters within are slowed by 50% and have their armor reduced by 20. Can place up to 5."
      }
    , { displayName = "Glowing Meteorite"
      , rarity = Lunar
      , description = "Rain meteors from the sky, damaging ALL characters for 600% damage per blast. Lasts 20 seconds."
      }
    , { displayName = "Helfire Tincture"
      , rarity = Lunar
      , description = "Ignite ALL characters within 15m for 12s. Deal 5% of your maximum health/second as burning as damage. The burn is 0.5x stronger on yourself, 0.25x stronger on allies, and 24x stronger on enemies."
      }
    , { displayName = "Spinel Tonic"
      , rarity = Lunar
      , description = "Drink the Tonic, gaining a boost for 20 seconds. Increases damage by +100%. Increases attack speed by +70%. Increases armor by +20. Increases maximum health by +50%. Increases passive health regeneration by +300%. Increases movespeed by +30%. When the Tonic wears off, you have a 20% chance to gain a Tonic Affliction, reducing all of your stats by -5% (-5% per stack)."
      }
    ]
