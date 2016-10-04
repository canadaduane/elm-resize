module Main exposing (..)

import Window
import Html exposing (Html)
import Html.App as App
import Svg exposing (svg, text, text')
import Svg.Attributes exposing (viewBox, width, height, x, y)
import Svg.Events exposing (onResize)


main =
    App.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    ( Int, Int )


defaultDimensions =
    ( 100, 100 )


init : ( Model, Cmd Msg )
init =
    ( defaultDimensions, Cmd.none )



-- UPDATE


type Msg
    = Resize
    | WindowResize { width : Int, height : Int }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg _ =
    case msg of
        Resize ->
            ( ( 200, 200 ), Cmd.none )

        WindowResize { width, height } ->
            ( ( width, height ), Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Window.resizes WindowResize



-- VIEW


view : Model -> Html Msg
view ( w, h ) =
    svg [ viewBox <| "0 0 " ++ (toString 100) ++ " " ++ (toString 100), width "100%", height "100%", onResize Resize ]
        [ text' [ x "0", y "100" ] [ text ((toString w) ++ " " ++ (toString h)) ] ]
