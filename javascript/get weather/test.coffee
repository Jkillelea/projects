"use strict"
weather = null

opts =
  KEY: "510f17fc4351880193a58f228f89faa5"
  units: 'imperial'

boulder =
  div_name: 'boulder'
  id: 5574991
  name: 'Boulder'
  country: 'US'
  coord:
    lon: -105.270554
    lat: 40.014992,
palo_alto =
  id: 5380748
  div_name: 'palo_alto'
  name: 'Palo Alto'
  country: 'US'
  coord:
    lon: -122.143021
    lat: 37.441879


$(document).ready ->
  $.getJSON "http://api.openweathermap.org/data/2.5/forecast/city?id=#{palo_alto.id}&APPID=#{opts.KEY}&units=#{opts.units}",
  (result) ->
    weather = result.list[0]
    d = document.getElementById palo_alto.div_name
    d.innerHTML = "The weather in #{result.city.name} is <b>#{Math.round result.list[0].main.temp}</b> degrees"
    return
  $.getJSON "http://api.openweathermap.org/data/2.5/forecast/city?id=#{boulder.id}&APPID=#{opts.KEY}&units=#{opts.units}",
  (result) ->
    weather = result.list[0]
    d = document.getElementById boulder.div_name
    d.innerHTML = "The weather in #{result.city.name} is <b>#{Math.round result.list[0].main.temp}</b> degrees"
    return
  return
