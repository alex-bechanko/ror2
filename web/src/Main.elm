module Main exposing (Msg(..), main, update, view)

import Browser
import ElmTextSearch
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events as Events exposing (..)
import Item exposing (Item)
import Items exposing (backgroundClass)
import Search


main : Program Flags Model Msg
main =
    Browser.element { init = init, update = update, view = view, subscriptions = subscriptions }


type alias Model =
    { items : List Item
    , focusedItem : Maybe.Maybe Item
    , searchContent : String
    , searchMatches : List String
    , itemIndex : ElmTextSearch.Index Items.Details
    , config : Config
    }


type alias Flags =
    { config : Config, items : List Item }


type alias Config =
    { itemImagesDirectory : String }


type Msg
    = ItemMouseOver Item
    | SearchStringUpdate String


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


init : Flags -> ( Model, Cmd Msg )
init flags =
    let
        index =
            Tuple.first <| Search.new Items.items
    in
    ( { items = flags.items
      , focusedItem = Maybe.Nothing
      , searchContent = ""
      , searchMatches = List.map .displayName Items.items
      , itemIndex = index
      , config = flags.config
      }
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg data =
    case msg of
        ItemMouseOver item ->
            ( { data | focusedItem = Maybe.Just item }, Cmd.none )

        SearchStringUpdate search ->
            ( updateSearch search data, Cmd.none )


updateSearch : String -> Model -> Model
updateSearch search data =
    case ElmTextSearch.searchT search data.itemIndex of
        Result.Err _ ->
            { data | searchMatches = List.map .displayName Items.items, searchContent = search }

        Result.Ok ( index, matches ) ->
            { data | itemIndex = index, searchMatches = List.map Tuple.first matches, searchContent = search }


view : Model -> Html Msg
view data =
    div [ class "px-4" ]
        [ div []
            [ h1 [ class "text-xl", class "px-4", class "pt-4" ] [ text "Risk of Rain 2 Items" ]
            , viewSearchBar data.searchContent
            ]
        , div [ class "flex" ]
            [ viewItemList data.config data.items data.searchMatches
            , viewFocusedItem data.focusedItem
            ]
        ]


viewFocusedItem : Maybe.Maybe Item -> Html Msg
viewFocusedItem focus =
    case focus of
        Maybe.Nothing ->
            div [ class "w-1/4", class "p-4" ] []

        Maybe.Just item ->
            div [ class "w-1/4", class "p-4" ]
                [ h3 [] [ text item.name ]
                , p [] [ text item.description ]
                ]


viewItemList : Config -> List Item -> List String -> Html Msg
viewItemList conf items matches =
    let
        orderedItems =
            List.sortWith Item.defaultItemOrder items
    in
    div [ class "w-3/4", class "p-4" ]
        [ ul [ class "flex", class "flex-wrap" ]
            (List.map (\x -> viewItem conf x (List.member x.name matches)) orderedItems)
        ]


imagePath : Config -> Item -> String
imagePath conf item =
    conf.itemImagesDirectory ++ "/" ++ item.image


viewItem : Config -> Item -> Bool -> Html Msg
viewItem conf item itemMatch =
    let
        itemMatchClass =
            if itemMatch then
                class ""

            else
                class "opacity-30"
    in
    li
        [ class "bg-cover"
        , class "w-12"
        , class "h-12"
        , class "flex"
        , class "justify-center"
        , class "m-0.5"
        , itemMatchClass
        , class <| Item.backgroundClass item
        , Events.onMouseOver (ItemMouseOver item)
        ]
        [ img
            [ src (imagePath conf item)
            , class "max-w-12"
            , class "max-h-12"
            ]
            []
        ]


viewSearchBar : String -> Html Msg
viewSearchBar content =
    div [ class "p-4" ]
        [ input
            [ placeholder "search ..."
            , value content
            , class "p-1"
            , onInput SearchStringUpdate
            ]
            []
        ]
