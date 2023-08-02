let Prelude =
      https://prelude.dhall-lang.org/v22.0.0/package.dhall
        sha256:1c7622fdc868fe3a23462df3e6f533e50fdc12ecf3b42c0bb45c328ec8c4293e

let Schema = ./schema.dhall

let artifacts
    : Schema.Category
    = { name = "Artifacts"
      , items =
        [ ./artifacts/chaos.dhall
        , ./artifacts/command.dhall
        , ./artifacts/death.dhall
        , ./artifacts/dissonance.dhall
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
      }

in  artifacts
