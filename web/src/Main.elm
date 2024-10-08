-- Risk of Rain 2 item viewer
-- Copyright (C) 2024 Alex Bechanko
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Affero General Public License as
-- published by the Free Software Foundation, either version 3 of the
-- License, or (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Affero General Public License for more details.
--
-- You should have received a copy of the GNU Affero General Public License
-- along with this program.  If not, see <https://www.gnu.org/licenses/>.


module Main exposing (Msg(..), main, update, view)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events as Events exposing (..)
import List exposing (concatMap)


type alias Config =
    { imagesDirectory : String }


type alias Item =
    { name : String, description : String, image : String, background : String }


type alias Category =
    { name : String, items : List Item }


type alias Catalog =
    List Category


type alias Model =
    { catalog : Catalog
    , focusedItem : Maybe.Maybe Item
    , searchContent : String
    , searchMatches : List String
    , config : Config
    }


type alias Flags =
    { config : Config, catalog : Catalog }


type Msg
    = ItemMouseOver Item
    | SearchStringUpdate String


main : Program Flags Model Msg
main =
    Browser.element { init = init, update = update, view = view, subscriptions = subscriptions }


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


init : Flags -> ( Model, Cmd Msg )
init flags =
    ( { catalog = flags.catalog
      , focusedItem = Maybe.Nothing
      , searchContent = ""
      , searchMatches = List.map .name <| concatMap .items flags.catalog
      , config = flags.config
      }
    , Cmd.none
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ItemMouseOver item ->
            ( { model | focusedItem = Maybe.Just item }, Cmd.none )

        SearchStringUpdate search ->
            ( updateSearch search model, Cmd.none )


updateSearch : String -> Model -> Model
updateSearch search model =
    let
        isMatch x =
            if String.contains (String.toLower search) (String.toLower x.name) then
                Just x.name

            else
                Nothing

        matches =
            List.filterMap isMatch <| concatMap .items model.catalog
    in
    { model | searchMatches = matches, searchContent = search }


view : Model -> Html Msg
view data =
    div [ class "px-4" ]
        [ viewHeader data.searchContent
        , div [ class "flex" ]
            [ viewCatalog data.config data.catalog data.searchMatches
            , viewFocusedItem data.focusedItem
            ]
        ]


viewHeader : String -> Html Msg
viewHeader search =
    div []
        [ h1 [ class "text-xl", class "px-4", class "pt-4" ] [ text "Risk of Rain 2 Items" ]
        , viewSearchBar search
        ]


viewFocusedItem : Maybe.Maybe Item -> Html Msg
viewFocusedItem focus =
    case focus of
        Maybe.Nothing ->
            div [ class "w-1/4", class "p-4" ] []

        Maybe.Just item ->
            div [ class "w-1/4", class "p-4" ]
                [ h3 [] [ text item.name ]
                , pre [ style "white-space" "pre-wrap" ] [ text item.description ]
                ]


viewCatalog : Config -> Catalog -> List String -> Html Msg
viewCatalog conf catalog matches =
    div [ class "w-3/4", class "p-4" ] <| List.map (viewCategory conf matches) catalog


viewCategory : Config -> List String -> Category -> Html Msg
viewCategory conf matches category =
    div []
        [ h3 [] [ text category.name ]
        , ul [ class "flex", class "flex-wrap" ]
            (List.map (\x -> viewItem conf x (List.member x.name matches)) category.items)
        ]


imagePath : Config -> Item -> String
imagePath conf item =
    conf.imagesDirectory ++ "/" ++ item.image


backgroundImagePath : Config -> Item -> String
backgroundImagePath conf item =
    conf.imagesDirectory ++ "/" ++ item.background


viewItem : Config -> Item -> Bool -> Html Msg
viewItem conf item itemMatch =
    let
        itemMatchClass =
            if itemMatch then
                class ""

            else
                class "opacity-30"

        bgStyle =
            "url('" ++ backgroundImagePath conf item ++ "')"
    in
    li
        [ class "bg-cover"
        , class "w-12"
        , class "h-12"
        , class "flex"
        , class "justify-center"
        , class "m-0.5"
        , style "background-image" bgStyle
        , itemMatchClass
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
