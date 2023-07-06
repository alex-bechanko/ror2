module Search exposing (new)

import ElmTextSearch
import Items


new : List Items.Details -> ( ElmTextSearch.Index Items.Details, List ( Int, String ) )
new items =
    let
        index =
            ElmTextSearch.new
                { ref = .displayName
                , fields = [ ( .displayName, 1.0 ) ]
                , listFields = []
                }
    in
    ElmTextSearch.addDocs items index
