module Main exposing (Msg(..), main, update, view)

import Browser
import Constants
import Data exposing (Items, itemsDecoder)
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Http


main : Program () Model Msg
main =
    Browser.element { init = init, update = update, subscriptions = subscriptions, view = view }


type Model
    = LoadDataFailure Http.Error
    | LoadingData
    | Model { items : Items }


type Msg
    = DownloadedItemsData (Result Http.Error Items)


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


init : () -> ( Model, Cmd Msg )
init _ =
    ( LoadingData
    , Http.get
        { url = Constants.itemsDataURL
        , expect = Http.expectJson DownloadedItemsData itemsDecoder
        }
    )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg _ =
    case msg of
        DownloadedItemsData result ->
            case result of
                Ok data ->
                    ( Model { items = data }, Cmd.none )

                Err err ->
                    ( LoadDataFailure err, Cmd.none )


loadItemsDataFailureMessage : Http.Error -> String
loadItemsDataFailureMessage error =
    case error of
        Http.BadUrl url ->
            "Unable to load items data: bad url provided " ++ url

        Http.Timeout ->
            "Unable to load items data: timeout"

        Http.NetworkError ->
            "Unable to load items data: network error"

        Http.BadStatus status ->
            "Unable to load items data: bad status " ++ String.fromInt status ++ " received"

        Http.BadBody body ->
            "Unable to load items data: bad body \"" ++ body ++ "\" provided"


view : Model -> Html Msg
view model =
    case model of
        LoadDataFailure err ->
            text (loadItemsDataFailureMessage err)

        LoadingData ->
            text "Loading items data"

        Model data ->
            Html.pre [] [ text (Debug.toString data.items) ]


itemList : Items -> Html Msg
itemList items =
    Html.div []
        []
