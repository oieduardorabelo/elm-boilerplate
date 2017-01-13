import Html exposing (..)
import Html.Events exposing (onClick)
import Html.Attributes exposing (..)

styleContainer =
  style
    [
      ("display", "flex"),
      ("align-items", "center"),
      ("justify-content", "center"),
      ("max-width", "70em"),
      ("margin", "20px auto"),
      ("font-size", "16px")
    ]
styleCounter =
  style
    [
      ("background-color", "#EEE"),
      ("padding", "10px 20px")
    ]
styleButtons =
  style
    [
      ("background-color", "transparent"),
      ("padding", "8px 20px"),
      ("cursor", "pointer"),
      ("border", "2px solid #EEE"),
      ("font-size", "inherit")
    ]

main =
  Html.beginnerProgram { model = 0, view = view, update = update }

type Msg = Increment | Decrement

update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

view model =
  div [ styleContainer ]
    [ button [ styleButtons, type_ "button", onClick Decrement ] [ text "-" ]
    , div [ styleCounter ] [ text (toString model) ]
    , button [ styleButtons, type_ "button", onClick Increment ] [ text "+" ]
    ]
