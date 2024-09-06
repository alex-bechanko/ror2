let Prelude =
      https://prelude.dhall-lang.org/v22.0.0/package.dhall
        sha256:1c7622fdc868fe3a23462df3e6f533e50fdc12ecf3b42c0bb45c328ec8c4293e

let circle = "\u25cf"

let square = "\u25a0"

let triangle = "\u25b2"

let diamond = "\u25ca"

let render = \(code: List (List Text)) -> Prelude.Text.concatSep "\n" (Prelude.List.map (List Text) Text (Prelude.Text.concatSep " ") code)

in
  { render = render
  , circle = circle
  , square = square
  , triangle = triangle
  , diamond = diamond
  }
