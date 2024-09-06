let Prelude =
      https://prelude.dhall-lang.org/v20.1.0/package.dhall
        sha256:26b0ef498663d269e4dc6a82b0ee289ec565d683ef4c00d0ebdd25333a5a3c98

let circle = "●"

let square = "■"

let triangle = "▲"

let diamond = "◊"

let render =
      \(code : List (List Text)) ->
        Prelude.Text.concatSep
          "\n"
          (Prelude.List.map (List Text) Text (Prelude.Text.concatSep " ") code)

in  { render, circle, square, triangle, diamond }
