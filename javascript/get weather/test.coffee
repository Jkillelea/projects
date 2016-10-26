"use strict"

$(document).ready ->
  $("button").click ->
    $.getJSON "http://api.openweathermap.org/data/2.5/forecast/city?id=5380748&APPID=510f17fc4351880193a58f228f89faa5&units=imperial",
    (result) ->
      $("div").text   "The weather in #{result.city.name} is #{result.list[0].main.temp} degrees"
      $("div").append "<br>"
      return # returns are there to have the generated JS have null returns. Not nessecary and the code works just as fine without them.
    return
  return

title = document.getElementsByTagName('title')[0]
