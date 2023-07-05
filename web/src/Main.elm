module Main exposing (Msg(..), main, update, view)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events as Events exposing (..)
import Items exposing (backgroundClass)


condClass cond cl =
    if cond then
        class cl

    else
        class ""


main : Program () Model Msg
main =
    Browser.sandbox { init = init, update = update, view = view }


type alias Model =
    { items : List Items.Details, focusedItem : Maybe.Maybe Items.Details, searchContent : String, searchMatches : List String }


type Msg
    = ItemMouseOver Items.Details
    | SearchStringUpdate String


init : Model
init =
    { items = Items.items, focusedItem = Maybe.Nothing, searchContent = "", searchMatches = [] }


update : Msg -> Model -> Model
update msg data =
    case msg of
        ItemMouseOver item ->
            { data | focusedItem = Maybe.Just item }

        SearchStringUpdate search ->
            { data | searchContent = search }


view : Model -> Html Msg
view data =
    div [ class "px-4" ]
        [ node "link" [ rel "stylesheet", href "/styles/style.css" ] []
        , div []
            [ h1 [ class "text-xl", class "px-4", class "pt-4" ] [ text "Risk of Rain 2 Items" ]
            , viewSearchBar data.searchContent
            ]
        , div [ class "flex" ]
            [ viewItemList data.items data.searchContent
            , viewFocusedItem data.focusedItem
            ]
        ]


viewFocusedItem : Maybe.Maybe Items.Details -> Html Msg
viewFocusedItem focus =
    case focus of
        Maybe.Nothing ->
            div [ class "w-1/4", class "p-4" ] []

        Maybe.Just item ->
            div [ class "w-1/4", class "p-4" ]
                [ h3 [] [ text item.displayName ]
                , p [] [ text item.description ]
                ]


viewItemList : List Items.Details -> String -> Html Msg
viewItemList items search =
    let
        orderedItems =
            List.sortWith Items.defaultItemOrder items
    in
    div [ class "w-3/4", class "p-4" ]
        [ ul [ class "flex", class "flex-wrap" ]
            (List.map (\x -> viewItem x search) orderedItems)
        ]


viewItem : Items.Details -> String -> Html Msg
viewItem item search =
    let
        foundcls =
            if String.contains search item.displayName then
                class ""

            else
                class "opacity-50"
    in
    li
        [ class "bg-cover"
        , class "w-12"
        , class "h-12"
        , class "flex"
        , class "justify-center"
        , class "m-0.5"
        , foundcls
        , class <| backgroundClass item
        , Events.onMouseOver (ItemMouseOver item)
        ]
        [ img
            [ src (Items.image item)
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
