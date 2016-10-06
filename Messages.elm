module Messages exposing (..)

import Html exposing (Html, button, div, text)
import Html.App as App
import Html.Events exposing (onClick)


-- Model


type alias Model =
  Bool


init : (Model, Cmd Msg)
init =
  (False, Cmd.none)


-- MESSAGES


type Msg
  = Expand
  | Collapse


-- VIEW


view : Model -> Html Msg
view model =
  if model then
    div []
        [button [onClick Collapse] [text "Collapse"]
        , text "Widget"
        ]
  else
    div []
        [button [onClick Expand] [text "Expand"]]


-- UPDATE


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Expand ->
      (True, Cmd.none)

    Collapse ->
      (False, Cmd.none)


-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none


-- MAIN


main =
  App.program{init = init, view = view, update = update, subscriptions = subscriptions}