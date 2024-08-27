let Schema = ../schema.dhall

let Dlc = Schema.Dlc

let Rarity = Schema.Rarity

in    { item =
        { name = "Harvester's Scythe"
        , description = "'Critical Strikes' heal you."
        , image = "items/harvesters_scythe.png"
        , background = Some "backgrounds/rare.png"
        }
      , dlc = None Dlc
      , rarity = Rarity.Uncommon
      , advanced_description =
          "Gain 5% critical chance. Critical strikes heal for 8 (+4 per stack) health."
      , unlocked_by = Some
          "Complete the **Prismatically Aligned** challenge. Complete a Prismatic Trial."
      , interactions =
        [ "The chance of 'Critical Strike' does not increase with multiple stacks of Harvester's Scythe."
        , "Shatterspleen bleed effect chance is the same as critical hit chance."
        , ''
          Predatory Instints and Harvester's Scythe increase the chance to `Critically Strike' just like Len's Maker's
          Glasses.
          Combined you need nine stacks of Lens-Maker's Glasses, one stack of Predatory Instincts, and one stack of
          Harvester's Scythe to achieve 100% chance to `Critically Strike`.
          ''
        , ''
          Harvester's Scythe works very well with survivors that have guaranteed critical hit chance
          like Bandit or Railgunner.
          ''
        ]
      }
    : Schema.GameItem
