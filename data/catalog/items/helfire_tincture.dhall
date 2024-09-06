let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in  { item =
      { name = "Helfire Tincture"
      , description = "Burn everything nearby... including you and allies."
      , image = "items/helfire_tincture.png"
      , background = Some "backgrounds/lunar.png"
      }
    , dlc = None Dlc
    , rarity = Rarity.Lunar
    , advanced_description =
        ''
        Ignite ALL characters within 15m for 12s.
        Deal 5% of your maximum health/second as burning as damage.
        The burn is 0.5x stronger on yourself, 0.25x stronger on allies, and 24x stronger on enemies.
        ''
    , unlocked_by = Some
        "Complete the **Multikill!** challenge. Kill 15 enemies simultaneously."
    , interactions =
      [ "Ignition Tank augments Helfire Tincture damage, including to yourself."
      , "Razorwire triggers everytime Helfire Tincture triggers."
      , "Repulsion Armor Plate reduces by Helfire Tincture's self-damage."
      , "Tougher Times can block Helfire Tincture's self-damage."
      , ''
        Items that increase health increase survivability and damage with Helfire Tincture.
        These items include:
        - Titanic Knurl
        - Infusion
        - Bison Steak
        - Pearl
        - Irradiant Pearl
        - Stone Flux Pauldron
        ''
      , ''
        Voidsent Flame triggers when you have full health and take damage from Helfire Tincture.
        The Voidsent Flame however does not damage you, and instead hurts enemies around you.
        ''
      , ''
        Items that do not help, or actively hurt you when using Helfire Tincture:
        - Medkit
        - Topaz Broach
        - Personal Shield Generator
        - Cautious Slug
        - Rose Buckler
        - Shaped Glass
        - Ignition Tank
        ''
      ]
    }
