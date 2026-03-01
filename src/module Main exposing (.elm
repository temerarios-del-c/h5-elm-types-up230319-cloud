module module%20Main%20exposing%20%28 exposing (..)module Main exposing (..)

import Html exposing (Html, text)


type GradeStatus
    = Approved
    | Failed
    | Pending



categoricalGrade : List Float -> List GradeStatus
categoricalGrade grades =
    List.map gradeToStatus grades


gradeToStatus : Float -> GradeStatus
gradeToStatus grade =
    if grade < 0 then
        Pending

    else if grade > 7 then
        Approved

    else
        Failed


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Canceled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        Canceled ->
            "Pedir reembolso"

        Delayed ->
            "Esperar"

        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"


airportAction : List AirplaneStatus -> List String
airportAction statuses =
    List.map airplaneScheduleAction statuses


main : Html msg
main =
    text "Funciones listas para el examen "