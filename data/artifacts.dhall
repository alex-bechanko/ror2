let Schema = ./schema.dhall

let artifacts
    : Schema.Category
    = { name = "Artifacts"
      , items =
        [ { name = "Artifact of Chaos"
          , description =
              "Friendly fire is enabled for both survivors and monsters."
          , image = "artifacts/artifact_of_chaos.png"
          , background = "backgrounds/box_outline.png"
          }
        , { name = "Artifact of Command"
          , description = "Choose your items"
          , image = "artifacts/artifact_of_command.png"
          , background = "backgrounds/box_outline.png"
          }
        , { name = "Artifact of Death"
          , description = "When one player dies, everyone dies."
          , image = "artifacts/artifact_of_death.png"
          , background = "backgrounds/box_outline.png"
          }
        , { name = "Artifact of Dissonance"
          , description =
              "Monsters can appear outside their usual environments."
          , image = "artifacts/artifact_of_dissonance.png"
          , background = "backgrounds/box_outline.png"
          }
        , { name = "Artifact of Enigma"
          , description =
              "Spawn with a random equipment that changes every time it is activated."
          , image = "artifacts/artifact_of_enigma.png"
          , background = "backgrounds/box_outline.png"
          }
        , { name = "Artifact of Evolution"
          , description = "Monsters gain items between stages."
          , image = "artifacts/artifact_of_evolution.png"
          , background = "backgrounds/box_outline.png"
          }
        , { name = "Artifact of Frailty"
          , description = "Fall damage is doubled and lethal."
          , image = "artifacts/artifact_of_frailty.png"
          , background = "backgrounds/box_outline.png"
          }
        , { name = "Artifact of Glass"
          , description = "Allies deal 500% damage, but have 10% health"
          , image = "artifacts/artifact_of_glass.png"
          , background = "backgrounds/box_outline.png"
          }
        , { name = "Artifact of Honor"
          , description = "Enemies can only spawn as elites."
          , image = "artifacts/artifact_of_honor.png"
          , background = "backgrounds/box_outline.png"
          }
        , { name = "Artifact of Kin"
          , description = "Monsters will be of only one type per stage."
          , image = "artifacts/artifact_of_kin.png"
          , background = "backgrounds/box_outline.png"
          }
        , { name = "Artifact of Metamorphosis"
          , description = "Players always spawn as a random survivor."
          , image = "artifacts/artifact_of_metamorphosis.png"
          , background = "backgrounds/box_outline.png"
          }
        , { name = "Artifact of Sacrifice"
          , description =
              "Monsters drop items on death, but chests no longer spawn."
          , image = "artifacts/artifact_of_sacrifice.png"
          , background = "backgrounds/box_outline.png"
          }
        , { name = "Artifact of Soul"
          , description = "Wisps emerge from defeated monsters."
          , image = "artifacts/artifact_of_soul.png"
          , background = "backgrounds/box_outline.png"
          }
        , { name = "Artifact of Spite"
          , description = "Enemies drop multiple exploding bombs on death."
          , image = "artifacts/artifact_of_spite.png"
          , background = "backgrounds/box_outline.png"
          }
        , { name = "Artifact of Swarms"
          , description =
              "Monster spawns are doubled, but monster health is halved."
          , image = "artifacts/artifact_of_swarms.png"
          , background = "backgrounds/box_outline.png"
          }
        , { name = "Artifact of Vengeance"
          , description =
              "Your relentless doppelganger will invade every 10 minutes."
          , image = "artifacts/artifact_of_vengeance.png"
          , background = "backgrounds/box_outline.png"
          }
        ]
      }

in  artifacts
