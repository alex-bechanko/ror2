let Schema = ./schema.dhall

let artifacts
    : Schema.Category
    = Schema.Category.Artifacts 
        [ ./artifacts/chaos.dhall
        , ./artifacts/command.dhall
        , ./artifacts/death.dhall
        , ./artifacts/dissonance.dhall
        , ./artifacts/delusion.dhall
        , ./artifacts/devotion.dhall
        , ./artifacts/enigma.dhall
        , ./artifacts/evolution.dhall
        , ./artifacts/frailty.dhall
        , ./artifacts/glass.dhall
        , ./artifacts/honor.dhall
        , ./artifacts/kin.dhall
        , ./artifacts/metamorphosis.dhall
        , ./artifacts/sacrifice.dhall
        , ./artifacts/soul.dhall
        , ./artifacts/spite.dhall
        , ./artifacts/swarms.dhall
        , ./artifacts/vengeance.dhall
        ]

in  artifacts
