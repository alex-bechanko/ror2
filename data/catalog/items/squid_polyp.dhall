let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Squid Polyp"
        , description =
            "Activating an interactable summons a Squid Turret nearby."
        , image = "items/squid_polyp.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          ''
          Activating an interactable summons a Squid Turret.
          Squid Turrets attack nearby enemies at 100% (+100% per stack) attack speed.
          Lasts 30 seconds.
          ''
      , unlocked_by = Some
          "Complete the **Automation Activation** challenge. Activate 6 turrets in a single run."
      , interactions =
        [ "Bundle of Fireworks can be triggered using the Remote Caffeinator's vending machine."
        ]
      }
    : Schema.GameItem
