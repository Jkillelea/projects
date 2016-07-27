package main

import (
  "fmt"
  // "encoding/xml"
  "io/ioutil"
  "net/http"
)

var airport, dataSource, format = "ksfo", "metars", "xml"
var hoursBeforeNow = 1 // Must be at least 1

func main() {
  GetMetar(airport, dataSource, format, hoursBeforeNow)
}


func GetMetar(airport, dataSource, format string, hoursBeforeNow int) () {
  response, err := http.Get("https://www.aviationweather.gov/adds/dataserver_current/httpparam?dataSource=" + dataSource + "&requestType=retrieve&format=" + format + "&stationString=" + airport + "&hoursBeforeNow=" + hoursBeforeNow)

  PrintErrors(err)

  robots, err := ioutil.ReadAll(response.Body)
	response.Body.Close()

  PrintErrors(err)

  fmt.Printf("%s", robots)
}


func PrintErrors(err error)  {
  if err != nil {
    fmt.Println(err)
  }
}
