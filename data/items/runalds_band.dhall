let empty = https://prelude.dhall-lang.org/List/empty

let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in  { item =
      { name = "Runald's Band"
      , description =
          "High damage hits also blasts enemies with runic ice. Recharges over time."
      , image = "items/runalds_band.png"
      , background = Some "backgrounds/rare.png"
      }
    , dlc = None Dlc
    , rarity = Rarity.Uncommon
    , advanced_description =
        ''
        Hits that deal more than 400% damage also blasts enemies with a runic ice blast.
        The ice blast slows the enemy by 80% for 3s (+3s per stack).
        The ice blast also deals 250% (+250% per stack) TOTAL damage.
        Recharges every 10 seconds."
        ''
    , unlocked_by = Some
        ''
        Complete the **Death Do Us Part** challenge.
        Discover the hidden chamber in the Abandoned Aquaduct.
        ''
    , interactions = empty Text
    } : Schema.GameItem
